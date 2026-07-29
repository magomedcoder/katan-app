import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/repositories/auth_repository.dart';
import 'package:katan/domain/usecases/login_usecase.dart';
import 'package:katan/domain/usecases/logout_usecase.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthAuthenticated extends AuthState {
  const AuthAuthenticated({this.host, this.username});

  final String? host;
  final String? username;

  @override
  List<Object?> get props => [host, username];
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated({this.host, this.username, this.message});

  final String? host;
  final String? username;
  final String? message;

  @override
  List<Object?> get props => [host, username, message];
}

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required LoginUseCase loginUseCase,
    required LogoutUseCase logoutUseCase,
    required AuthRepository authRepository,
  })  : _loginUseCase = loginUseCase,
        _logoutUseCase = logoutUseCase,
        _authRepository = authRepository,
        super(const AuthInitial());

  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;
  final AuthRepository _authRepository;

  Future<void> bootstrap() async {
    emit(const AuthLoading());
    final host = await _authRepository.savedHost();
    final username = await _authRepository.savedUsername();
    final hasSession = await _authRepository.hasSession();

    if (hasSession) {
      emit(AuthAuthenticated(host: host, username: username));
    } else {
      emit(AuthUnauthenticated(host: host, username: username));
    }
  }

  Future<void> login({
    required String host,
    required String username,
    required String password,
  }) async {
    emit(const AuthLoading());
    try {
      await _loginUseCase(
        host: host,
        username: username,
        password: password,
      );
      emit(AuthAuthenticated(host: host.trim(), username: username.trim()));
    } on Failure catch (e) {
      emit(
        AuthUnauthenticated(
          host: host,
          username: username,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        AuthUnauthenticated(
          host: host,
          username: username,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> logout() async {
    final current = state;
    final host = switch (current) {
      AuthAuthenticated(:final host) => host,
      AuthUnauthenticated(:final host) => host,
      _ => null,
    };
    emit(const AuthLoading());
    try {
      await _logoutUseCase();
    } catch (_) {}
    emit(AuthUnauthenticated(host: host));
  }
}
