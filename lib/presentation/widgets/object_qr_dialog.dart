import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:qr_flutter/qr_flutter.dart';

String buildObjectQrUrl({required String kind, required int id}) {
  final host = getIt<SessionStorage>().host;
  final path = '/o/$kind/$id';
  if (host == null || host.isEmpty) {
    return path;
  }

  final endpoint = HostEndpoint.parse(host);
  final scheme = endpoint.useTls ? 'https' : 'http';
  final defaultPort = endpoint.useTls ? 443 : 80;
  final origin = endpoint.port == defaultPort
    ? '$scheme://${endpoint.host}'
    : '$scheme://${endpoint.host}:${endpoint.port}';

  return '$origin$path';
}

Future<void> showObjectQrDialog(
  BuildContext context, {
  required String kind,
  required int id,
  required String kindLabel,
  String title = '',
}) {
  final url = buildObjectQrUrl(kind: kind, id: id);
  final heading = title.trim().isEmpty ? '$kindLabel #$id' : title.trim();

  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('QR-код'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            '$kindLabel #$id',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Center(
            child: QrImageView(
              data: url,
              size: 220,
              backgroundColor: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            url,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        TextButton.icon(
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: url));
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Ссылка скопирована')),
              );
            }
          },
          icon: const Icon(Icons.copy, size: 18),
          label: const Text('Скопировать'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Закрыть'),
        ),
      ],
    ),
  );
}
