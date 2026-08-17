import 'dart:io' show Platform;

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/account_mappers.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/app_notification.dart';
import 'package:katan/generated/pb/account.pbgrpc.dart';

class AccountRemoteDataSource {
  AccountRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<Account> getAccount() async {
    try {
      final client = await _client();
      final response = await client.getAccount(
        GetAccountRequest(agent: _agent),
        options: await _authOptions(),
      );

      return Account(
        fullName: response.fullName,
        username: response.username,
        permissions: List<String>.from(response.permissions),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить профиль');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<AppNotificationsPage> getNotifications() async {
    try {
      final client = await _client();
      final response = await client.getNotifications(
        GetNotificationsRequest(),
        options: await _authOptions(),
      );
      return mapAppNotificationsPage(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить уведомления');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> markNotificationRead(int id) async {
    try {
      final client = await _client();
      await client.markNotificationRead(
        MarkNotificationReadRequest(id: Int64(id)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось отметить уведомление');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> markAllNotificationsRead() async {
    try {
      final client = await _client();
      await client.markAllNotificationsRead(
        MarkAllNotificationsReadRequest(),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось отметить уведомления');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<AccountServiceClient> _client() async {
    await _requireToken();
    return AccountServiceClient(_factory.requireChannel());
  }

  Future<CallOptions> _authOptions() async {
    final token = await _requireToken();
    return _factory.authOptions(token);
  }

  Future<String> _requireToken() async {
    final token = await _storage.accessToken;
    if (token == null || token.isEmpty) {
      throw const AuthFailure('Сессия не найдена');
    }

    return token;
  }

  Failure _mapGrpc(GrpcError e, String fallback) {
    if (e.code == StatusCode.unauthenticated) {
      return AuthFailure(e.message ?? 'Сессия истекла');
    }

    return ServerFailure(e.message ?? fallback);
  }

  String get _agent {
    try {
      return 'katan-app-${Platform.operatingSystem}';
    } catch (_) {
      return 'katan-app';
    }
  }
}
