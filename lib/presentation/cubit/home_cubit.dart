import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/usecases/get_account_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeLoading extends HomeState {
  const HomeLoading();
}

class HomeLoaded extends HomeState {
  const HomeLoaded(this.account);

  final Account account;

  @override
  List<Object?> get props => [account];
}

class HomeFailure extends HomeState {
  const HomeFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required GetAccountUseCase getAccountUseCase,
    required AuthCubit authCubit,
  })  : _getAccountUseCase = getAccountUseCase, _authCubit = authCubit, super(const HomeInitial());

  final GetAccountUseCase _getAccountUseCase;
  final AuthCubit _authCubit;

  Future<void> load() async {
    emit(const HomeLoading());
    try {
      final account = await _getAccountUseCase();
      emit(HomeLoaded(account));
    } on AuthFailure catch (e) {
      emit(HomeFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(HomeFailure(e.message));
    } catch (e) {
      emit(HomeFailure(e.toString()));
    }
  }
}
