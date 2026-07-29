import 'package:katan/domain/entities/auth_tokens.dart';
import 'package:katan/domain/repositories/auth_repository.dart';

class LoginUseCase {
  const LoginUseCase(this._repository);

  final AuthRepository _repository;

  Future<AuthTokens> call({
    required String host,
    required String username,
    required String password,
  }) {
    return _repository.login(
      host: host.trim(),
      username: username.trim(),
      password: password,
    );
  }
}
