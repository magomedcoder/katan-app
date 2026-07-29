import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/usecases/get_account_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

class ProfileInitial extends ProfileState {
  const ProfileInitial();
}

class ProfileLoading extends ProfileState {
  const ProfileLoading();
}

class ProfileLoaded extends ProfileState {
  const ProfileLoaded(this.account);

  final Account account;

  @override
  List<Object?> get props => [account];
}

class ProfileFailure extends ProfileState {
  const ProfileFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({
    required GetAccountUseCase getAccountUseCase,
    required AuthCubit authCubit,
  })  : _getAccountUseCase = getAccountUseCase,
        _authCubit = authCubit,
        super(const ProfileInitial());

  final GetAccountUseCase _getAccountUseCase;
  final AuthCubit _authCubit;

  Future<void> load() async {
    emit(const ProfileLoading());
    try {
      final account = await _getAccountUseCase();
      emit(ProfileLoaded(account));
    } on AuthFailure catch (e) {
      emit(ProfileFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ProfileFailure(e.message));
    } catch (e) {
      emit(ProfileFailure(e.toString()));
    }
  }
}
