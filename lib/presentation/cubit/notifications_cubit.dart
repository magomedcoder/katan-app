import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/app_notification.dart';
import 'package:katan/domain/usecases/get_notifications_usecase.dart';
import 'package:katan/domain/usecases/mark_all_notifications_read_usecase.dart';
import 'package:katan/domain/usecases/mark_notification_read_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class NotificationsState extends Equatable {
  const NotificationsState();

  @override
  List<Object?> get props => [];
}

class NotificationsInitial extends NotificationsState {
  const NotificationsInitial();
}

class NotificationsLoading extends NotificationsState {
  const NotificationsLoading();
}

class NotificationsLoaded extends NotificationsState {
  const NotificationsLoaded({
    required this.items,
    required this.unreadCount,
    this.actionError,
  });

  final List<AppNotification> items;
  final int unreadCount;
  final String? actionError;

  NotificationsLoaded copyWith({
    List<AppNotification>? items,
    int? unreadCount,
    String? actionError,
    bool clearActionError = false,
  }) {
    return NotificationsLoaded(
      items: items ?? this.items,
      unreadCount: unreadCount ?? this.unreadCount,
      actionError: clearActionError ? null : (actionError ?? this.actionError),
    );
  }

  @override
  List<Object?> get props => [items, unreadCount, actionError];
}

class NotificationsFailure extends NotificationsState {
  const NotificationsFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit({
    required GetNotificationsUseCase getNotificationsUseCase,
    required MarkNotificationReadUseCase markNotificationReadUseCase,
    required MarkAllNotificationsReadUseCase markAllNotificationsReadUseCase,
    required AuthCubit authCubit,
  })  : _getNotificationsUseCase = getNotificationsUseCase,
        _markNotificationReadUseCase = markNotificationReadUseCase,
        _markAllNotificationsReadUseCase = markAllNotificationsReadUseCase,
        _authCubit = authCubit,
        super(const NotificationsInitial());

  final GetNotificationsUseCase _getNotificationsUseCase;
  final MarkNotificationReadUseCase _markNotificationReadUseCase;
  final MarkAllNotificationsReadUseCase _markAllNotificationsReadUseCase;
  final AuthCubit _authCubit;

  Future<void> load() async {
    if (state is! NotificationsLoaded) {
      emit(const NotificationsLoading());
    }

    try {
      final page = await _getNotificationsUseCase();
      emit(NotificationsLoaded(
        items: page.items,
        unreadCount: page.unreadCount,
      ));
    } on AuthFailure catch (e) {
      emit(NotificationsFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(NotificationsFailure(e.message));
    } catch (e) {
      emit(NotificationsFailure(e.toString()));
    }
  }

  Future<void> markRead(int id) async {
    final current = state;
    if (current is! NotificationsLoaded || id <= 0) {
      return;
    }

    final index = current.items.indexWhere((item) => item.id == id);
    if (index < 0 || current.items[index].read) {
      return;
    }

    try {
      await _markNotificationReadUseCase(id);
      final items = [...current.items];
      items[index] = items[index].copyWith(read: true);
      emit(current.copyWith(
        items: items,
        unreadCount: current.unreadCount > 0 ? current.unreadCount - 1 : 0,
        clearActionError: true,
      ));
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> markAllRead() async {
    final current = state;
    if (current is! NotificationsLoaded || current.unreadCount <= 0) {
      return;
    }

    try {
      await _markAllNotificationsReadUseCase();
      emit(current.copyWith(
        items: [
          for (final item in current.items)
            item.id > 0 ? item.copyWith(read: true) : item,
        ],
        unreadCount: 0,
        clearActionError: true,
      ));
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }
}
