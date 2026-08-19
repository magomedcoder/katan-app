import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/chat_mappers.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/generated/pb/account.pbgrpc.dart';
import 'package:katan/generated/pb/chat.pb.dart' as chat_pb;

enum ChatEmitAction {
  subscribeRoom,
  unsubscribeRoom,
  typing,
}

class AccountRealtimeService {
  AccountRealtimeService(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  final _controller = StreamController<ChatEvent>.broadcast();
  StreamSubscription<AccountEvent>? _subscription;
  Timer? _reconnectTimer;
  bool _running = false;
  bool _connecting = false;

  int? activeRoomId;

  Stream<ChatEvent> get chatEvents => _controller.stream;

  bool get isRunning => _running;

  void start() {
    if (_running) {
      return;
    }

    _running = true;
    unawaited(_connect());
  }

  Future<void> stop() async {
    _running = false;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    await _subscription?.cancel();
    _subscription = null;
    _connecting = false;
    activeRoomId = null;
  }

  Future<void> reconnect() async {
    if (!_running) {
      start();
      return;
    }

    await _subscription?.cancel();
    _subscription = null;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    await _connect();
  }

  Future<void> emitChat(ChatEmitAction action, int roomId) async {
    if (roomId <= 0) {
      return;
    }

    try {
      final token = await _requireToken();
      final client = AccountServiceClient(_factory.requireChannel());
      final room = chat_pb.ChatRoomRef(roomId: Int64(roomId));
      final chatEvent = switch (action) {
        ChatEmitAction.subscribeRoom => chat_pb.ChatClientEvent(subscribeRoom: room),
        ChatEmitAction.unsubscribeRoom => chat_pb.ChatClientEvent(unsubscribeRoom: room),
        ChatEmitAction.typing => chat_pb.ChatClientEvent(typing: room),
      };

      await client.emit(
        AccountClientEvent(chat: chatEvent),
        options: _factory.authOptions(token),
      );
    } catch (_) {}
  }

  Future<void> _connect() async {
    if (!_running || _connecting) {
      return;
    }
    _connecting = true;

    try {
      final token = await _requireToken();
      final client = AccountServiceClient(_factory.requireChannel());
      final response = client.subscribe(
        AccountSubscribeRequest(),
        options: _factory.authOptions(token, noTimeout: true),
      );

      await _subscription?.cancel();
      _subscription = response.listen(
        _onEvent,
        onError: (_) => _scheduleReconnect(),
        onDone: _scheduleReconnect,
        cancelOnError: true,
      );
    } on Failure {
      _scheduleReconnect();
    } on GrpcError {
      _scheduleReconnect();
    } catch (_) {
      _scheduleReconnect();
    } finally {
      _connecting = false;
    }
  }

  void _onEvent(AccountEvent event) {
    if (event.whichPayload() != AccountEvent_Payload.chat) {
      return;
    }

    final mapped = mapChatEvent(event.chat);
    if (mapped != null && !_controller.isClosed) {
      _controller.add(mapped);
    }
  }

  void _scheduleReconnect() {
    _subscription = null;
    if (!_running) {
      return;
    }

    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(const Duration(milliseconds: 1500), () {
      if (_running) {
        unawaited(_connect());
      }
    });
  }

  Future<String> _requireToken() async {
    final token = await _storage.accessToken;
    if (token == null || token.isEmpty) {
      throw const AuthFailure('Сессия не найдена');
    }

    return token;
  }

  Future<void> dispose() async {
    await stop();
    await _controller.close();
  }
}
