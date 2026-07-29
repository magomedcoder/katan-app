import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/data_sources/remote/auth_remote_datasource.dart';
import 'package:katan/domain/entities/auth_tokens.dart';
import 'package:katan/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthRemoteDataSource remote,
    required SessionStorage storage,
  })  : _remote = remote,
        _storage = storage;

  final AuthRemoteDataSource _remote;
  final SessionStorage _storage;

  @override
  Future<AuthTokens> login({
    required String host,
    required String username,
    required String password,
  }) async {
    final tokens = await _remote.login(
      host: host,
      username: username,
      password: password,
    );

    await _storage.setHost(host);
    await _storage.setUsername(username);
    await _storage.saveTokens(
      accessToken: tokens.accessToken,
      refreshToken: tokens.refreshToken,
    );

    return tokens;
  }

  @override
  Future<void> logout() async {
    await _remote.logout();
    await _storage.clearSession();
  }

  @override
  Future<bool> hasSession() => _storage.hasSession;

  @override
  Future<String?> savedHost() async => _storage.host;

  @override
  Future<String?> savedUsername() async => _storage.username;
}
