import 'dart:io' show Platform;

import 'package:package_info_plus/package_info_plus.dart';

abstract final class AppAgent {
  static String? _cached;

  static Future<String> get() async {
    final cached = _cached;
    if (cached != null) {
      return cached;
    }

    final info = await PackageInfo.fromPlatform();
    final build = int.tryParse(info.buildNumber) ?? 0;
    final value = '${_clientLabel()}|$build';
    _cached = value;
    return value;
  }

  static String _clientLabel() {
    try {
      return 'katan-app-${Platform.operatingSystem}';
    } catch (_) {
      return 'katan-app';
    }
  }
}
