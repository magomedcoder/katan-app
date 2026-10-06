import 'package:katan/data/data_sources/remote/map_remote_datasource.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:katan/domain/repositories/ar_objects_repository.dart';

class ArObjectsRepositoryImpl implements ArObjectsRepository {
  ArObjectsRepositoryImpl(this._remote);

  final MapRemoteDataSource _remote;

  @override
  Future<List<ArMapObject>> loadAround({
    required double lat,
    required double lng,
    required double radiusMeters,
    Set<ArObjectKind> kinds = const {},
    ArIndoorQuery? indoor,
  }) {
    return _remote.getArObjects(
      lat: lat,
      lng: lng,
      radiusMeters: radiusMeters,
      kinds: kinds.isEmpty && indoor != null ? {ArObjectKind.device} : kinds,
      indoor: indoor,
    );
  }

  @override
  Future<ArMapObject?> getByRef(ArObjectRef ref) {
    return _remote.getArObject(ref);
  }

  @override
  Future<ArMapObject> setDeviceCover({
    required int deviceId,
    required ArCoverParams params,
  }) {
    return _remote.setArDeviceCover(deviceId: deviceId, params: params);
  }

  @override
  Future<ArMapObject> clearDeviceCover(int deviceId) {
    return _remote.clearArDeviceCover(deviceId);
  }

  @override
  Future<ArMapObject> setNodeHere({
    required int nodeId,
    required double lat,
    required double lng,
  }) {
    return _remote.setArNodeHere(nodeId: nodeId, lat: lat, lng: lng);
  }

  @override
  Future<ArMapObject> addCableReserve({
    required int cableId,
    required double lat,
    required double lng,
    required int meter,
    String note = '',
  }) {
    return _remote.addArCableReserve(
      cableId: cableId,
      lat: lat,
      lng: lng,
      meter: meter,
      note: note,
    );
  }

  @override
  Future<(String text, String impact)> schemeHint(ArObjectRef ref) {
    return _remote.getArSchemeHint(ref);
  }
}
