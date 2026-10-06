import 'package:katan/domain/entities/ar_object.dart';

class ArCoverParams {
  const ArCoverParams({
    required this.lat,
    required this.lng,
    required this.headingDeg,
    this.peerType = 0,
    this.peerId = 0,
    this.hasLocal = false,
    this.localX = 0,
    this.localY = 0,
    this.localZ = 0,
    this.altitudeM = 0,
  });

  final double lat;
  final double lng;
  final double headingDeg;
  final int peerType;
  final int peerId;
  final bool hasLocal;
  final double localX;
  final double localY;
  final double localZ;
  final double altitudeM;
}

class ArIndoorQuery {
  const ArIndoorQuery({
    required this.peerType,
    required this.peerId,
  });

  final int peerType;
  final int peerId;
}

abstract class ArObjectsRepository {
  Future<List<ArMapObject>> loadAround({
    required double lat,
    required double lng,
    required double radiusMeters,
    Set<ArObjectKind> kinds = const {},
    ArIndoorQuery? indoor,
  });

  Future<ArMapObject?> getByRef(ArObjectRef ref);

  Future<ArMapObject> setDeviceCover({
    required int deviceId,
    required ArCoverParams params,
  });

  Future<ArMapObject> clearDeviceCover(int deviceId);

  Future<ArMapObject> setNodeHere({
    required int nodeId,
    required double lat,
    required double lng,
  });

  Future<ArMapObject> addCableReserve({
    required int cableId,
    required double lat,
    required double lng,
    required int meter,
    String note = '',
  });

  Future<(String text, String impact)> schemeHint(ArObjectRef ref);
}
