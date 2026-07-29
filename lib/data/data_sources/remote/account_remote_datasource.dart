import 'dart:io' show Platform;

import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/generated/pb/account.pbgrpc.dart';

class AccountRemoteDataSource {
  AccountRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<Account> getAccount() async {
    try {
      final token = await _storage.accessToken;
      if (token == null || token.isEmpty) {
        throw const AuthFailure('Сессия не найдена');
      }

      final channel = _factory.requireChannel();
      final client = AccountServiceClient(channel);
      final response = await client.getAccount(
        GetAccountRequest(agent: _agent),
        options: _factory.authOptions(token),
      );

      return Account(
        fullName: response.fullName,
        username: response.username,
        permissions: List<String>.from(response.permissions),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      if (e.code == StatusCode.unauthenticated) {
        throw AuthFailure(e.message ?? 'Сессия истекла');
      }
      throw ServerFailure(e.message ?? 'Не удалось загрузить профиль');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  String get _agent {
    try {
      return 'katan-app-${Platform.operatingSystem}';
    } catch (_) {
      return 'katan-app';
    }
  }
}
