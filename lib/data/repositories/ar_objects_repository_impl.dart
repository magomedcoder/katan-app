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
}
