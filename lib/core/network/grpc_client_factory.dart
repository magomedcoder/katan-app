import 'package:grpc/grpc.dart';

import 'package:katan/core/storage/session_storage.dart';

class HostEndpoint {
  const HostEndpoint({
    required this.host,
    required this.port,
    required this.useTls,
  });

  final String host;
  final int port;
  final bool useTls;

  factory HostEndpoint.parse(String raw) {
    var value = raw.trim();
    if (value.isEmpty) {
      throw const FormatException('Хост не указан');
    }

    var useTls = false;
    if (value.startsWith('https://')) {
      useTls = true;
      value = value.substring('https://'.length);
    } else if (value.startsWith('http://')) {
      value = value.substring('http://'.length);
    }

    value = value.split('/').first;

    final parts = value.split(':');
    if (parts.length == 1) {
      return HostEndpoint(
        host: parts[0],
        port: useTls ? 443 : 80,
        useTls: useTls,
      );
    }

    final port = int.tryParse(parts.last);
    if (port == null) {
      throw FormatException('Некорректный порт: ${parts.last}');
    }

    final host = parts.sublist(0, parts.length - 1).join(':');
    return HostEndpoint(
      host: host,
      port: port,
      useTls: useTls,
    );
  }
}

class GrpcClientFactory {
  GrpcClientFactory(this._storage);

  final SessionStorage _storage;
  ClientChannel? _channel;

  ClientChannel channelFor(String host) {
    final endpoint = HostEndpoint.parse(host);
    _channel?.shutdown();
    _channel = ClientChannel(
      endpoint.host,
      port: endpoint.port,
      options: ChannelOptions(
        credentials: endpoint.useTls
          ? const ChannelCredentials.secure()
          : const ChannelCredentials.insecure(),
        idleTimeout: const Duration(minutes: 1),
      ),
    );
    return _channel!;
  }

  ClientChannel requireChannel() {
    final host = _storage.host;
    if (host == null || host.isEmpty) {
      throw StateError('Хост не сохранён. Выполните вход заново.');
    }

    return _channel ?? channelFor(host);
  }

  CallOptions authOptions(String? accessToken, {Duration? timeout}) {
    final metadata = <String, String>{};
    if (accessToken != null && accessToken.isNotEmpty) {
      metadata['Authorization'] = accessToken;
    }

    return CallOptions(
      metadata: metadata,
      timeout: timeout ?? const Duration(seconds: 30),
    );
  }

  Future<void> dispose() async {
    await _channel?.shutdown();
    _channel = null;
  }
}
