import 'package:get_it/get_it.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/data_sources/remote/account_remote_datasource.dart';
import 'package:katan/data/data_sources/remote/auth_remote_datasource.dart';
import 'package:katan/data/repositories/account_repository_impl.dart';
import 'package:katan/data/repositories/auth_repository_impl.dart';
import 'package:katan/domain/repositories/account_repository.dart';
import 'package:katan/domain/repositories/auth_repository.dart';
import 'package:katan/domain/usecases/get_account_usecase.dart';
import 'package:katan/domain/usecases/login_usecase.dart';
import 'package:katan/domain/usecases/logout_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  final prefs = await SharedPreferences.getInstance();

  getIt
    ..registerSingleton<SessionStorage>(SessionStorage(prefs: prefs))
    ..registerSingleton<GrpcClientFactory>(GrpcClientFactory(
        getIt<SessionStorage>()
    ))
    ..registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSource(
      getIt<GrpcClientFactory>(),
      getIt<SessionStorage>(),
    ))
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      remote: getIt<AuthRemoteDataSource>(),
      storage: getIt<SessionStorage>(),
    ))
    ..registerLazySingleton(() => LoginUseCase(
        getIt<AuthRepository>()
    ))
    ..registerLazySingleton(() => LogoutUseCase(
        getIt<AuthRepository>()
    ))
    ..registerFactory(() => AuthCubit(
      loginUseCase: getIt<LoginUseCase>(),
      logoutUseCase: getIt<LogoutUseCase>(),
      authRepository: getIt<AuthRepository>(),
    ))
    ..registerLazySingleton<AccountRemoteDataSource>(() => AccountRemoteDataSource(
      getIt<GrpcClientFactory>(),
      getIt<SessionStorage>(),
    ))
    ..registerLazySingleton<AccountRepository>(() => AccountRepositoryImpl(
        getIt<AccountRemoteDataSource>()
    ))
    ..registerLazySingleton(() => GetAccountUseCase(
        getIt<AccountRepository>()
    ));
}
