import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:katan/domain/repositories/ar_objects_repository.dart';
import 'package:katan/generated/pb/map.pbgrpc.dart';

class MapRemoteDataSource {
  MapRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<List<ArMapObject>> getArObjects({
    required double lat,
    required double lng,
    required double radiusMeters,
    required Iterable<ArObjectKind> kinds,
    int limitPerKind = 80,
    ArIndoorQuery? indoor,
  }) async {
    try {
      final client = await _client();
      final response = await client.getArObjects(
        GetArObjectsRequest(
          lat: lat,
          lng: lng,
          radiusMeters: radiusMeters,
          kinds: kinds.map((k) => k.wire).toList(),
          limitPerKind: limitPerKind,
          indoorPeerType: indoor?.peerType ?? 0,
          indoorPeerId: Int64(indoor?.peerId ?? 0),
          includeCovered: indoor != null,
        ),
        options: await _authOptions(),
      );

      return response.items.map(_mapItem).whereType<ArMapObject>().toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить объекты AR');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<ArMapObject?> getArObject(ArObjectRef ref) async {
    try {
      final client = await _client();
      final response = await client.getArObject(
        GetArObjectRequest(kind: ref.kind.wire, id: Int64(ref.id)),
        options: await _authOptions(),
      );
      if (!response.hasItem()) {
        return null;
      }
      return _mapItem(response.item);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      if (e.code == StatusCode.notFound) {
        return null;
      }
      throw _mapGrpc(e, 'Не удалось загрузить объект');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<ArMapObject> setArDeviceCover({
    required int deviceId,
    required ArCoverParams params,
  }) async {
    try {
      final client = await _client();
      final response = await client.setArDeviceCover(
        SetArDeviceCoverRequest(
          deviceId: Int64(deviceId),
          lat: params.lat,
          lng: params.lng,
          headingDeg: params.headingDeg,
          peerType: params.peerType,
          peerId: Int64(params.peerId),
          hasLocal: params.hasLocal,
          localX: params.localX,
          localY: params.localY,
          localZ: params.localZ,
          altitudeM: params.altitudeM,
        ),
        options: await _authOptions(),
      );
      final item = _mapItem(response.item);
      if (item == null) {
        throw const ServerFailure('Пустой ответ cover');
      }
      return item;
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось закрыть устройство');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<ArMapObject> clearArDeviceCover(int deviceId) async {
    try {
      final client = await _client();
      final response = await client.clearArDeviceCover(
        ClearArDeviceCoverRequest(deviceId: Int64(deviceId)),
        options: await _authOptions(),
      );
      final item = _mapItem(response.item);
      if (item == null) {
        throw const ServerFailure('Пустой ответ uncover');
      }

      return item;
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось открыть устройство наружу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  ArMapObject? _mapItem(ArObjectItem item) {
    final kind = ArObjectKind.tryParse(item.kind);
    if (kind == null || item.id.toInt() <= 0) {
      return null;
    }

    final point = item.hasPoint() ? item.point : null;
    if (point == null) {
      return null;
    }

    final line = <(double, double)>[
      for (final p in item.line) (p.lat, p.lng),
    ];

    return ArMapObject(
      ref: ArObjectRef(kind: kind, id: item.id.toInt()),
      title: item.title.isEmpty ? '${kind.label} #${item.id}' : item.title,
      subtitle: item.subtitle,
      lat: point.lat,
      lng: point.lng,
      colorHex: item.color.isEmpty ? null : item.color,
      linePoints: line,
      headingDeg: item.headingDeg,
      coveredInside: item.coveredInside,
      peerType: item.peerType,
      peerId: item.peerId.toInt(),
      peerName: item.peerName,
      coveredCount: item.coveredCount,
      localX: item.localX,
      localY: item.localY,
      localZ: item.localZ,
    );
  }

  Future<MapServiceClient> _client() async {
    final token = await _storage.accessToken;
    if (token == null || token.isEmpty) {
      throw const AuthFailure('Требуется авторизация');
    }

    return MapServiceClient(_factory.requireChannel());
  }

  Future<CallOptions> _authOptions() async {
    return _factory.authOptions(await _storage.accessToken);
  }

  Failure _mapGrpc(GrpcError e, String fallback) {
    if (e.code == StatusCode.unauthenticated) {
      return AuthFailure(e.message ?? 'Сессия истекла');
    }

    if (e.code == StatusCode.permissionDenied) {
      return ServerFailure(e.message ?? 'Недостаточно прав');
    }

    return ServerFailure(e.message?.isNotEmpty == true ? e.message! : fallback);
  }
}
