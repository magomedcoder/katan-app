import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/domain/entities/auth_tokens.dart';
import 'package:katan/generated/pb/auth.pbgrpc.dart';

class AuthRemoteDataSource {
  AuthRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<AuthTokens> login({
    required String host,
    required String username,
    required String password,
  }) async {
    try {
      final channel = _factory.channelFor(host);
      final client = AuthServiceClient(channel);
      final response = await client.login(
        LoginRequest(username: username, password: password),
        options: _factory.authOptions(null),
      );

      return AuthTokens(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
        expiresIn: response.expiresIn.toInt(),
      );
    } on GrpcError catch (e) {
      throw AuthFailure(e.message ?? 'Не удалось войти');
    } on FormatException catch (e) {
      throw NetworkFailure(e.message);
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> logout() async {
    try {
      final token = await _storage.accessToken;
      if (token == null || token.isEmpty) return;

      final channel = _factory.requireChannel();
      final client = AuthServiceClient(channel);
      await client.logout(
        LogoutRequest(),
        options: _factory.authOptions(token),
      );
    } catch (_) {}
  }
}
