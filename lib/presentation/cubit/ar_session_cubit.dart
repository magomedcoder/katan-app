import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:katan/domain/repositories/ar_objects_repository.dart';
import 'package:permission_handler/permission_handler.dart';

sealed class ArSessionState extends Equatable {
  const ArSessionState();

  @override
  List<Object?> get props => [];
}

class ArSessionInitial extends ArSessionState {
  const ArSessionInitial();
}

class ArSessionLoading extends ArSessionState {
  const ArSessionLoading();
}

class ArSessionNeedsPermission extends ArSessionState {
  const ArSessionNeedsPermission({
    required this.cameraDenied,
    required this.locationDenied,
    this.message = 'Нужны доступ к камере и геолокации',
  });

  final bool cameraDenied;
  final bool locationDenied;
  final String message;

  @override
  List<Object?> get props => [cameraDenied, locationDenied, message];
}

class ArSessionReady extends ArSessionState {
  const ArSessionReady({
    required this.lat,
    required this.lng,
    required this.accuracyMeters,
    required this.headingDegrees,
    required this.objects,
    required this.nearby,
    required this.enabledKinds,
    required this.soloKind,
    required this.cameraAvailable,
    required this.gpsWeak,
    required this.trackingPaused,
    required this.radiusMeters,
    this.selected,
    this.navTarget,
    this.indoorPeerType = 0,
    this.indoorPeerId = 0,
    this.indoorTitle = '',
  });

  final double lat;
  final double lng;
  final double accuracyMeters;
  final double headingDegrees;
  final List<ArMapObject> objects;
  final List<ArNearbyItem> nearby;
  final Set<ArObjectKind> enabledKinds;
  final ArObjectKind? soloKind;
  final bool cameraAvailable;
  final bool gpsWeak;
  final bool trackingPaused;
  final double radiusMeters;
  final ArNearbyItem? selected;
  final ArNearbyItem? navTarget;
  final int indoorPeerType;
  final int indoorPeerId;
  final String indoorTitle;

  bool get isIndoor => indoorPeerId > 0;

  @override
  List<Object?> get props => [
    lat,
    lng,
    accuracyMeters,
    headingDegrees,
    objects,
    nearby,
    enabledKinds,
    soloKind,
    cameraAvailable,
    gpsWeak,
    trackingPaused,
    radiusMeters,
    selected,
    navTarget,
    indoorPeerType,
    indoorPeerId,
    indoorTitle,
  ];
}

class ArSessionFailure extends ArSessionState {
  const ArSessionFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ArSessionCubit extends Cubit<ArSessionState> {
  ArSessionCubit({
    required ArObjectsRepository objectsRepository,
    required this.allowedKinds,
  })  : _objectsRepository = objectsRepository, super(const ArSessionInitial());

  final ArObjectsRepository _objectsRepository;
  final Set<ArObjectKind> allowedKinds;

  StreamSubscription<Position>? _posSub;
  StreamSubscription<CompassEvent>? _compassSub;
  Set<ArObjectKind> _enabled = {};
  ArObjectKind? _soloKind;
  List<ArMapObject> _all = [];
  double _lat = 0;
  double _lng = 0;
  double _accuracy = 999;
  double _heading = 0;
  bool _cameraAvailable = false;
  bool _trackingPaused = false;
  ArNearbyItem? _selected;
  ArObjectRef? _navRef;
  Timer? _reloadDebounce;
  double? _cacheLat;
  double? _cacheLng;
  DateTime? _cacheAt;
  int _indoorPeerType = 0;
  int _indoorPeerId = 0;
  String _indoorTitle = '';
  double _indoorOriginLat = 0;
  double _indoorOriginLng = 0;
  bool _hasIndoorOrigin = false;
  double _altitudeM = 0;

  static const radiusPresetsM = [100.0, 250.0, 500.0, 1000.0, 2000.0];
  static const _weakGpsThresholdM = 35.0;
  static const _clusterM = 8.0;
  static const _cacheMoveM = 40.0;
  static const _cacheMaxAge = Duration(seconds: 45);

  double _radiusM = radiusPresetsM[1];

  bool get _hasGeoCoords => _lat != 0 || _lng != 0;

  Future<void> start() async {
    emit(const ArSessionLoading());
    _enabled = {...allowedKinds};
    _soloKind = null;

    if (allowedKinds.isEmpty) {
      emit(const ArSessionFailure('Нет прав на слои AR (node / device / cable / customer)'));
      return;
    }

    final camera = await Permission.camera.request();
    final location = await Permission.locationWhenInUse.request();

    if (!camera.isGranted || !location.isGranted) {
      emit(ArSessionNeedsPermission(
        cameraDenied: !camera.isGranted,
        locationDenied: !location.isGranted,
      ));
      return;
    }

    _cameraAvailable = true;

    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(const ArSessionFailure('Включите геолокацию на устройстве'));
      return;
    }

    try {
      var pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      if (pos.latitude == 0 && pos.longitude == 0) {
        final last = await Geolocator.getLastKnownPosition();
        if (last != null && (last.latitude != 0 || last.longitude != 0)) {
          pos = last;
        }
      }
      
      if (pos.latitude == 0 && pos.longitude == 0) {
        emit(const ArSessionFailure('GPS не определён - подождите или выйдите на открытое место'));
        return;
      }

      _lat = pos.latitude;
      _lng = pos.longitude;
      _accuracy = pos.accuracy;
      _altitudeM = pos.altitude;
      await _reloadObjects(force: true);
      _emitReady();
    } catch (e) {
      emit(ArSessionFailure('Не удалось начать AR-сессию: $e'));
      return;
    }

    await _startTracking();
  }

  Future<void> _startTracking() async {
    await _posSub?.cancel();
    await _compassSub?.cancel();
    if (_trackingPaused) {
      return;
    }

    _posSub = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 3,
      ),
    ).listen((pos) {
      if (pos.latitude == 0 && pos.longitude == 0) {
        return;
      }

      _lat = pos.latitude;
      _lng = pos.longitude;
      _accuracy = pos.accuracy;
      _altitudeM = pos.altitude;
      _scheduleReload();
      _emitReady();
    });

    final compass = FlutterCompass.events;
    if (compass != null) {
      _compassSub = compass.listen((event) {
        final h = event.heading;
        if (h == null) {
          return;
        }
        _heading = h;
        _emitReady();
      });
    }
  }

  Future<void> setActive(bool active) async {
    if (active) {
      if (_trackingPaused) {
        _trackingPaused = false;
        await _startTracking();
        unawaited(_reloadObjects().then((_) => _emitReady()).catchError((_) {}));
      }
    } else {
      _trackingPaused = true;
      _reloadDebounce?.cancel();
      await _posSub?.cancel();
      _posSub = null;
      await _compassSub?.cancel();
      _compassSub = null;
      if (state is ArSessionReady) {
        _emitReady();
      }
    }
  }

  Future<void> openSettings() => openAppSettings();

  void toggleKind(ArObjectKind kind) {
    if (!allowedKinds.contains(kind)) {
      return;
    }

    _soloKind = null;
    if (_enabled.contains(kind)) {
      if (_enabled.length == 1) {
        return;
      }
      _enabled = {..._enabled}..remove(kind);
    } else {
      _enabled = {..._enabled, kind};
    }

    _emitReady();
  }

  void soloKind(ArObjectKind kind) {
    if (!allowedKinds.contains(kind)) {
      return;
    }
    
    _soloKind = kind;
    _enabled = {kind};
    _emitReady();
  }

  void enableAllKinds() {
    _soloKind = null;
    _enabled = {...allowedKinds};
    _emitReady();
  }

  Future<void> setRadiusMeters(double meters) async {
    if (_indoorPeerId > 0) {
      return;
    }

    final prev = _radiusM;
    _radiusM = meters;
    try {
      await _reloadObjects(force: true);
    } catch (_) {
      _radiusM = prev;
    }
    _emitReady();
  }

  void select(ArNearbyItem item) {
    _selected = item;
    _emitReady();
  }

  void clearSelection() {
    _selected = null;
    _emitReady();
  }

  void startNavigation(ArNearbyItem item) {
    _navRef = item.object.ref;
    _selected = null;
    _emitReady();
  }

  void stopNavigation() {
    _navRef = null;
    _emitReady();
  }

  Future<void> enterIndoor({
    required int peerType,
    required int peerId,
    required String title,
    double? originLat,
    double? originLng,
  }) async {
    _indoorPeerType = peerType;
    _indoorPeerId = peerId;
    _indoorTitle = title;
    _indoorOriginLat = originLat ?? _lat;
    _indoorOriginLng = originLng ?? _lng;
    _hasIndoorOrigin = true;
    _selected = null;
    await _reloadObjectsSafely();
    _emitReady();
  }

  Future<void> exitIndoor() async {
    _indoorPeerType = 0;
    _indoorPeerId = 0;
    _indoorTitle = '';
    _indoorOriginLat = 0;
    _indoorOriginLng = 0;
    _hasIndoorOrigin = false;
    await _reloadObjectsSafely();
    _emitReady();
  }

  Future<void> coverDevice({
    required int deviceId,
    int peerType = 0,
    int peerId = 0,
  }) async {
    if (!_hasGeoCoords) {
      throw const ServerFailure('Нет GPS - нельзя закрыть устройство');
    }

    final covered = await _objectsRepository.setDeviceCover(
      deviceId: deviceId,
      params: ArCoverParams(
        lat: _lat,
        lng: _lng,
        headingDeg: _heading,
        peerType: peerType,
        peerId: peerId,
        altitudeM: _altitudeM,
      ),
    );
    _selected = null;

    final pType = covered.peerType > 0 ? covered.peerType : peerType;
    final pId = covered.peerId > 0 ? covered.peerId : peerId;
    if (pType > 0 && pId > 0) {
      _indoorPeerType = pType;
      _indoorPeerId = pId;
      if (covered.peerName.isNotEmpty) {
        _indoorTitle = covered.peerName;
      } else if (_indoorTitle.isEmpty) {
        _indoorTitle = 'Внутри';
      }
      _ensureIndoorOriginFromCover(covered);
    }

    await _reloadObjectsSafely();
    _emitReady();
  }

  void _ensureIndoorOriginFromCover(ArMapObject covered) {
    if (_hasIndoorOrigin) {
      return;
    }

    final horiz = GeoMath.hypot(covered.localX, covered.localY);
    if (horiz < 0.05) {
      _indoorOriginLat = _lat;
      _indoorOriginLng = _lng;
      _hasIndoorOrigin = true;
      return;
    }

    final back = GeoMath.offsetMeters(
      lat: _lat,
      lng: _lng,
      distanceM: horiz,
      bearingDeg: GeoMath.bearingFromEnu(-covered.localX, -covered.localY),
    );
    _indoorOriginLat = back.$1;
    _indoorOriginLng = back.$2;
    _hasIndoorOrigin = true;
  }

  Future<void> uncoverDevice(int deviceId) async {
    await _objectsRepository.clearDeviceCover(deviceId);
    _selected = null;
    await _reloadObjectsSafely();
    _emitReady();
  }

  Future<ArNearbyItem?> resolveRef(ArObjectRef ref) async {
    if (!allowedKinds.contains(ref.kind)) {
      return null;
    }

    try {
      final existing = _all.where((o) => o.ref == ref);
      ArMapObject? obj = existing.isEmpty ? null : existing.first;
      obj ??= await _objectsRepository.getByRef(ref);
      if (obj == null) {
        return null;
      }

      if (!_all.any((o) => o.ref == obj!.ref)) {
        _all = [..._all, obj];
      }

      _enabled = {..._enabled, ref.kind};
      final item = _toNearbyItem(obj);
      _selected = item;
      _emitReady();
      return item;
    } on Failure {
      rethrow;
    } catch (_) {
      return null;
    }
  }

  void _scheduleReload() {
    _reloadDebounce?.cancel();
    _reloadDebounce = Timer(const Duration(seconds: 2), () {
      unawaited(_reloadObjects().then((_) => _emitReady()).catchError((_) {}));
    });
  }

  Future<void> _reloadObjects({bool force = false}) async {
    if (!_hasGeoCoords) {
      return;
    }

    if (!force && _indoorPeerId == 0 && _cacheAt != null && _cacheLat != null && _cacheLng != null && _all.isNotEmpty) {
      final age = DateTime.now().difference(_cacheAt!);
      final moved = GeoMath.distanceMeters(
        lat1: _cacheLat!,
        lng1: _cacheLng!,
        lat2: _lat,
        lng2: _lng,
      );
      if (age < _cacheMaxAge && moved < _cacheMoveM) {
        return;
      }
    }

    final indoor = _indoorPeerId > 0
      ? ArIndoorQuery(
        peerType: _indoorPeerType,
        peerId: _indoorPeerId,
      )
      : null;
    final kinds = indoor != null
      ? {ArObjectKind.device}
      : (_enabled.isEmpty ? allowedKinds : _enabled);
    _all = await _objectsRepository.loadAround(
      lat: _lat,
      lng: _lng,
      radiusMeters: _radiusM,
      kinds: kinds,
      indoor: indoor,
    );
    _cacheLat = _lat;
    _cacheLng = _lng;
    _cacheAt = DateTime.now();
  }

  Future<void> _reloadObjectsSafely({bool force = false}) async {
    try {
      await _reloadObjects(force: force);
    } catch (_) {}
  }

  List<ArNearbyItem> _computeNearby() {
    final indoor = _indoorPeerId > 0;
    final filtered = indoor
      ? _all
      : _all.where((o) => _enabled.contains(o.kind)).toList();
    final items = filtered.map(_toNearbyItem).toList();

    items.sort((a, b) => a.distanceMeters.compareTo(b.distanceMeters));
    if (indoor) {
      return items;
    }

    return _clusterNodes(items);
  }

  ArNearbyItem _toNearbyItem(ArMapObject o) {
    final indoor = _indoorPeerId > 0;
    late final double bearing;
    var dist = 0.0;

    if (indoor && o.coveredInside) {
      final (userX, userY) = GeoMath.enuMeters(
        originLat: _hasIndoorOrigin ? _indoorOriginLat : _lat,
        originLng: _hasIndoorOrigin ? _indoorOriginLng : _lng,
        lat: _lat,
        lng: _lng,
      );
      final dx = o.localX - userX;
      final dy = o.localY - userY;
      dist = GeoMath.hypot(dx, dy);
      if (dist < 0.8) {
        bearing = o.headingDeg;
        dist = 2.0 + o.localZ.abs() * 0.05;
      } else {
        bearing = GeoMath.bearingFromEnu(dx, dy);
      }
    } else {
      dist = GeoMath.distanceMeters(
        lat1: _lat,
        lng1: _lng,
        lat2: o.lat,
        lng2: o.lng,
      );
      bearing = GeoMath.bearingDegrees(
        lat1: _lat,
        lng1: _lng,
        lat2: o.lat,
        lng2: o.lng,
      );
    }

    return ArNearbyItem(
      object: o,
      distanceMeters: dist,
      bearingDegrees: bearing,
      relativeDegrees: GeoMath.relativeBearing(bearing, _heading),
    );
  }

  List<ArNearbyItem> _clusterNodes(List<ArNearbyItem> items) {
    final used = <int>{};
    final out = <ArNearbyItem>[];
    for (var i = 0; i < items.length; i++) {
      if (used.contains(i)) {
        continue;
      }

      final head = items[i];
      if (head.object.kind != ArObjectKind.node) {
        out.add(head);
        used.add(i);
        continue;
      }

      final group = <ArNearbyItem>[head];
      used.add(i);
      for (var j = i + 1; j < items.length; j++) {
        if (used.contains(j)) {
          continue;
        }

        final other = items[j];
        if (other.object.kind != ArObjectKind.node) {
          continue;
        }

        final d = GeoMath.distanceMeters(
          lat1: head.object.lat,
          lng1: head.object.lng,
          lat2: other.object.lat,
          lng2: other.object.lng,
        );
        if (d <= _clusterM) {
          group.add(other);
          used.add(j);
        }
      }
      if (group.length == 1) {
        out.add(head);
      } else {
        group.sort((a, b) => a.distanceMeters.compareTo(b.distanceMeters));
        final nearest = group.first;
        out.add(ArNearbyItem(
          object: nearest.object,
          distanceMeters: nearest.distanceMeters,
          bearingDegrees: nearest.bearingDegrees,
          relativeDegrees: nearest.relativeDegrees,
          clusterSize: group.length,
          clusterItems: group,
        ));
      }
    }
    out.sort((a, b) => a.distanceMeters.compareTo(b.distanceMeters));
    return out;
  }

  void _emitReady() {
    final nearby = _computeNearby();
    ArNearbyItem? selected = _selected;
    if (selected != null) {
      final match = nearby.where((e) => e.object.ref == selected!.object.ref);
      if (match.isEmpty) {
        final flat = nearby.expand((e) => e.isCluster ? e.clusterItems : [e]);
        final found = flat.where((e) => e.object.ref == selected!.object.ref);
        selected = found.isEmpty ? selected : found.first;
      } else {
        selected = match.first;
      }
    }

    ArNearbyItem? nav;
    if (_navRef != null) {
      final flat = nearby.expand((e) => e.isCluster ? e.clusterItems : [e]);
      final found = flat.where((e) => e.object.ref == _navRef);
      nav = found.isEmpty ? null : found.first;
      if (nav == null) {
        for (final o in _all) {
          if (o.ref == _navRef) {
            nav = _toNearbyItem(o);
            break;
          }
        }
      }
      if (nav != null && nav.distanceMeters < 8) {
        _navRef = null;
        nav = null;
      }
    }

    emit(ArSessionReady(
      lat: _lat,
      lng: _lng,
      accuracyMeters: _accuracy,
      headingDegrees: _heading,
      objects: _all,
      nearby: nearby,
      enabledKinds: {..._enabled},
      soloKind: _soloKind,
      cameraAvailable: _cameraAvailable,
      gpsWeak: _accuracy > _weakGpsThresholdM,
      trackingPaused: _trackingPaused,
      radiusMeters: _radiusM,
      selected: selected,
      navTarget: nav,
      indoorPeerType: _indoorPeerType,
      indoorPeerId: _indoorPeerId,
      indoorTitle: _indoorTitle,
    ));
  }

  @override
  Future<void> close() async {
    _reloadDebounce?.cancel();
    await _posSub?.cancel();
    await _compassSub?.cancel();
    return super.close();
  }
}
