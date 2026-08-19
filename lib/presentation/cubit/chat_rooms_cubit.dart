import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/usecases/get_chat_unread_counts_usecase.dart';
import 'package:katan/domain/usecases/list_chat_rooms_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class ChatRoomsState extends Equatable {
  const ChatRoomsState();

  @override
  List<Object?> get props => [];
}

class ChatRoomsInitial extends ChatRoomsState {
  const ChatRoomsInitial();
}

class ChatRoomsLoading extends ChatRoomsState {
  const ChatRoomsLoading();
}

class ChatRoomsLoaded extends ChatRoomsState {
  const ChatRoomsLoaded({
    required this.rooms,
    required this.unreadTotal,
  });

  final List<ChatRoom> rooms;
  final int unreadTotal;

  @override
  List<Object?> get props => [rooms, unreadTotal];
}

class ChatRoomsFailure extends ChatRoomsState {
  const ChatRoomsFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ChatRoomsCubit extends Cubit<ChatRoomsState> {
  ChatRoomsCubit({
    required ListChatRoomsUseCase listRoomsUseCase,
    required GetChatUnreadCountsUseCase getUnreadCountsUseCase,
    required AccountRealtimeService realtime,
    required AuthCubit authCubit,
  })  : _listRoomsUseCase = listRoomsUseCase,
        _getUnreadCountsUseCase = getUnreadCountsUseCase,
        _realtime = realtime,
        _authCubit = authCubit,
        super(const ChatRoomsInitial()) {
    _eventsSub = _realtime.chatEvents.listen(_onChatEvent);
  }

  final ListChatRoomsUseCase _listRoomsUseCase;
  final GetChatUnreadCountsUseCase _getUnreadCountsUseCase;
  final AccountRealtimeService _realtime;
  final AuthCubit _authCubit;

  StreamSubscription<ChatEvent>? _eventsSub;
  Timer? _refreshDebounce;

  Future<void> load() async {
    if (state is! ChatRoomsLoaded) {
      emit(const ChatRoomsLoading());
    }

    try {
      final rooms = await _listRoomsUseCase();
      var unreadTotal = 0;
      try {
        unreadTotal = (await _getUnreadCountsUseCase()).total;
      } on Failure {
        unreadTotal = rooms.fold<int>(0, (sum, room) => sum + room.unreadCount);
      }

      emit(ChatRoomsLoaded(
        rooms: _sortRooms(rooms),
        unreadTotal: unreadTotal,
      ));
    } on AuthFailure catch (e) {
      emit(ChatRoomsFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ChatRoomsFailure(e.message));
    } catch (e) {
      emit(ChatRoomsFailure(e.toString()));
    }
  }

  void _onChatEvent(ChatEvent event) {
    switch (event.kind) {
      case ChatEventKind.message:
      case ChatEventKind.messageUpdated:
      case ChatEventKind.messageDeleted:
        _scheduleRefresh();
      case ChatEventKind.presence:
        _applyPresence(event);
      case ChatEventKind.read:
        if (event.roomId != null && event.roomId == _realtime.activeRoomId) {
          break;
        }
        _scheduleRefresh();
      case ChatEventKind.typing:
        break;
    }
  }

  void _scheduleRefresh() {
    _refreshDebounce?.cancel();
    _refreshDebounce = Timer(const Duration(milliseconds: 350), () {
      unawaited(load());
    });
  }

  void _applyPresence(ChatEvent event) {
    final current = state;
    final userId = event.userId;
    if (current is! ChatRoomsLoaded || userId == null || userId <= 0) {
      return;
    }

    final isOnline = event.isOnline ?? false;
    final lastVisitAt = event.lastVisitAt ?? '';
    var changed = false;
    final rooms = current.rooms.map((room) {
      if (room.members.isEmpty) {
        return room;
      }

      final members = room.members.map((member) {
        if (member.user.id != userId) {
          return member;
        }

        changed = true;
        return member.copyWith(
          isOnline: isOnline,
          lastVisitAt: lastVisitAt.isNotEmpty ? lastVisitAt : member.lastVisitAt,
        );
      }).toList();
      return changed ? room.copyWith(members: members) : room;
    }).toList();

    if (changed) {
      emit(ChatRoomsLoaded(rooms: rooms, unreadTotal: current.unreadTotal));
    }
  }

  List<ChatRoom> _sortRooms(List<ChatRoom> rooms) {
    final sorted = [...rooms];
    sorted.sort((a, b) {
      if (a.isGlobal && !b.isGlobal) {
        return -1;
      }
      if (!a.isGlobal && b.isGlobal) {
        return 1;
      }

      final aTime = a.lastMessage?.createdAt;
      final bTime = b.lastMessage?.createdAt;
      if (aTime == null && bTime == null) {
        return b.id.compareTo(a.id);
      }

      if (aTime == null) {
        return 1;
      }

      if (bTime == null) {
        return -1;
      }

      return bTime.compareTo(aTime);
    });
    return sorted;
  }

  @override
  Future<void> close() async {
    _refreshDebounce?.cancel();
    await _eventsSub?.cancel();
    return super.close();
  }
}
