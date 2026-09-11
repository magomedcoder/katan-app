import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/domain/usecases/create_direct_chat_usecase.dart';
import 'package:katan/domain/usecases/create_group_chat_usecase.dart';
import 'package:katan/domain/usecases/get_chat_unread_counts_usecase.dart';
import 'package:katan/domain/usecases/leave_chat_room_usecase.dart';
import 'package:katan/domain/usecases/list_chat_rooms_usecase.dart';
import 'package:katan/domain/usecases/search_chat_usecase.dart';
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
    this.query = '',
    this.searchRooms = const [],
    this.searchUsers = const [],
    this.searching = false,
    this.actionBusy = false,
    this.actionError,
  });

  final List<ChatRoom> rooms;
  final int unreadTotal;
  final String query;
  final List<ChatRoom> searchRooms;
  final List<UserRef> searchUsers;
  final bool searching;
  final bool actionBusy;
  final String? actionError;

  bool get isSearching => query.trim().isNotEmpty;

  List<ChatRoom> get visibleRooms => isSearching ? searchRooms : rooms;

  ChatRoomsLoaded copyWith({
    List<ChatRoom>? rooms,
    int? unreadTotal,
    String? query,
    List<ChatRoom>? searchRooms,
    List<UserRef>? searchUsers,
    bool? searching,
    bool? actionBusy,
    String? actionError,
    bool clearActionError = false,
  }) {
    return ChatRoomsLoaded(
      rooms: rooms ?? this.rooms,
      unreadTotal: unreadTotal ?? this.unreadTotal,
      query: query ?? this.query,
      searchRooms: searchRooms ?? this.searchRooms,
      searchUsers: searchUsers ?? this.searchUsers,
      searching: searching ?? this.searching,
      actionBusy: actionBusy ?? this.actionBusy,
      actionError: clearActionError ? null : (actionError ?? this.actionError),
    );
  }

  @override
  List<Object?> get props => [
    rooms,
    unreadTotal,
    query,
    searchRooms,
    searchUsers,
    searching,
    actionBusy,
    actionError,
  ];
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
    required SearchChatUseCase searchChatUseCase,
    required CreateDirectChatUseCase createDirectUseCase,
    required CreateGroupChatUseCase createGroupUseCase,
    required LeaveChatRoomUseCase leaveRoomUseCase,
    required AccountRealtimeService realtime,
    required AuthCubit authCubit,
  })  : _listRoomsUseCase = listRoomsUseCase,
        _getUnreadCountsUseCase = getUnreadCountsUseCase,
        _searchChatUseCase = searchChatUseCase,
        _createDirectUseCase = createDirectUseCase,
        _createGroupUseCase = createGroupUseCase,
        _leaveRoomUseCase = leaveRoomUseCase,
        _realtime = realtime,
        _authCubit = authCubit,
        super(const ChatRoomsInitial()) {
    _eventsSub = _realtime.chatEvents.listen(_onChatEvent);
  }

  final ListChatRoomsUseCase _listRoomsUseCase;
  final GetChatUnreadCountsUseCase _getUnreadCountsUseCase;
  final SearchChatUseCase _searchChatUseCase;
  final CreateDirectChatUseCase _createDirectUseCase;
  final CreateGroupChatUseCase _createGroupUseCase;
  final LeaveChatRoomUseCase _leaveRoomUseCase;
  final AccountRealtimeService _realtime;
  final AuthCubit _authCubit;

  StreamSubscription<ChatEvent>? _eventsSub;
  Timer? _refreshDebounce;
  Timer? _searchDebounce;
  int _searchSeq = 0;

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

      final current = state;
      if (current is ChatRoomsLoaded) {
        emit(current.copyWith(
          rooms: _sortRooms(rooms),
          unreadTotal: unreadTotal,
          clearActionError: true,
        ));
      } else {
        emit(ChatRoomsLoaded(
          rooms: _sortRooms(rooms),
          unreadTotal: unreadTotal,
        ));
      }
    } on AuthFailure catch (e) {
      emit(ChatRoomsFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ChatRoomsFailure(e.message));
    } catch (e) {
      emit(ChatRoomsFailure(e.toString()));
    }
  }

  void setQuery(String value) {
    final current = state;
    if (current is! ChatRoomsLoaded) {
      return;
    }

    final query = value;
    emit(current.copyWith(query: query, searching: query.trim().isNotEmpty));

    _searchDebounce?.cancel();
    if (query.trim().isEmpty) {
      emit(current.copyWith(
        query: '',
        searching: false,
        searchRooms: const [],
        searchUsers: const [],
      ));
      return;
    }

    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      unawaited(_runSearch(query.trim()));
    });
  }

  Future<void> _runSearch(String query) async {
    final current = state;
    if (current is! ChatRoomsLoaded) {
      return;
    }

    final seq = ++_searchSeq;
    emit(current.copyWith(searching: true, clearActionError: true));

    try {
      final result = await _searchChatUseCase(query: query);
      final stateNow = state;
      if (stateNow is! ChatRoomsLoaded || seq != _searchSeq) {
        return;
      }

      emit(stateNow.copyWith(
        searching: false,
        searchRooms: result.rooms,
        searchUsers: result.users,
      ));
    } on AuthFailure catch (e) {
      emit(ChatRoomsFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      final stateNow = state;
      if (stateNow is ChatRoomsLoaded && seq == _searchSeq) {
        emit(stateNow.copyWith(searching: false, actionError: e.message));
      }
    } catch (e) {
      final stateNow = state;
      if (stateNow is ChatRoomsLoaded && seq == _searchSeq) {
        emit(stateNow.copyWith(searching: false, actionError: e.toString()));
      }
    }
  }

  Future<ChatRoom?> createDirect(int userId) async {
    final current = state;
    if (current is! ChatRoomsLoaded || current.actionBusy) {
      return null;
    }

    emit(current.copyWith(actionBusy: true, clearActionError: true));
    try {
      final room = await _createDirectUseCase(userId);
      await load();
      final stateNow = state;
      if (stateNow is ChatRoomsLoaded) {
        emit(stateNow.copyWith(actionBusy: false, query: '', searchRooms: const [], searchUsers: const []));
      }
      return room;
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.message));
      await _authCubit.logout();
      return null;
    } on Failure catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.message));
      return null;
    } catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.toString()));
      return null;
    }
  }

  Future<ChatRoom?> createGroup({
    required String title,
    required List<int> userIds,
  }) async {
    final current = state;
    if (current is! ChatRoomsLoaded || current.actionBusy) {
      return null;
    }

    final trimmed = title.trim();
    if (trimmed.isEmpty) {
      return null;
    }

    emit(current.copyWith(actionBusy: true, clearActionError: true));
    try {
      final room = await _createGroupUseCase(title: trimmed, userIds: userIds);
      await load();
      final stateNow = state;
      if (stateNow is ChatRoomsLoaded) {
        emit(stateNow.copyWith(actionBusy: false));
      }
      return room;
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.message));
      await _authCubit.logout();
      return null;
    } on Failure catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.message));
      return null;
    } catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.toString()));
      return null;
    }
  }

  Future<bool> leaveRoom(int roomId) async {
    final current = state;
    if (current is! ChatRoomsLoaded || current.actionBusy) {
      return false;
    }

    emit(current.copyWith(actionBusy: true, clearActionError: true));
    try {
      await _leaveRoomUseCase(roomId);
      await load();
      final stateNow = state;
      if (stateNow is ChatRoomsLoaded) {
        emit(stateNow.copyWith(actionBusy: false));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.message));
      return false;
    } catch (e) {
      emit(current.copyWith(actionBusy: false, actionError: e.toString()));
      return false;
    }
  }

  Future<List<UserRef>> searchUsers(String query) async {
    final result = await _searchChatUseCase(query: query.trim());
    return result.users;
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
      emit(current.copyWith(rooms: rooms));
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
    _searchDebounce?.cancel();
    await _eventsSub?.cancel();
    return super.close();
  }
}
