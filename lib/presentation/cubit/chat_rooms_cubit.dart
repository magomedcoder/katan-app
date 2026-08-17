import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
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
    required AuthCubit authCubit,
  })  : _listRoomsUseCase = listRoomsUseCase,
        _getUnreadCountsUseCase = getUnreadCountsUseCase,
        _authCubit = authCubit,
        super(const ChatRoomsInitial());

  final ListChatRoomsUseCase _listRoomsUseCase;
  final GetChatUnreadCountsUseCase _getUnreadCountsUseCase;
  final AuthCubit _authCubit;

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
}
