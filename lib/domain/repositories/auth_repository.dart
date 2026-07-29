import 'package:katan/domain/entities/auth_tokens.dart';

abstract class AuthRepository {
  Future<AuthTokens> login({
    required String host,
    required String username,
    required String password,
  });

  Future<void> logout();

  Future<bool> hasSession();

  Future<String?> savedHost();

  Future<String?> savedUsername();
}
