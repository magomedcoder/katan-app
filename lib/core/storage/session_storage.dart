import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionStorage {
  SessionStorage({
    required SharedPreferences prefs,
    FlutterSecureStorage? secureStorage,
  })  : _prefs = prefs,
        _secure = secureStorage ?? const FlutterSecureStorage();

  static const _hostKey = 'host';
  static const _accessTokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';
  static const _usernameKey = 'username';
  static const _secureTimeout = Duration(milliseconds: 800);

  final SharedPreferences _prefs;
  final FlutterSecureStorage _secure;

  String? get host => _prefs.getString(_hostKey);

  Future<void> setHost(String host) => _prefs.setString(_hostKey, host);

  Future<String?> get accessToken async {
    try {
      final value = await _secure.read(key: _accessTokenKey).timeout(_secureTimeout);
      if (value != null) {
        return value;
      }
    } catch (_) {}
    return _prefs.getString(_accessTokenKey);
  }

  Future<String?> get refreshToken async {
    try {
      final value = await _secure.read(key: _refreshTokenKey).timeout(_secureTimeout);
      if (value != null) {
        return value;
      }
    } catch (_) {}
    return _prefs.getString(_refreshTokenKey);
  }

  String? get username => _prefs.getString(_usernameKey);

  Future<void> setUsername(String username) => _prefs.setString(_usernameKey, username);

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _prefs.setString(_accessTokenKey, accessToken);
    await _prefs.setString(_refreshTokenKey, refreshToken);
    try {
      await _secure.write(key: _accessTokenKey, value: accessToken).timeout(_secureTimeout);
      await _secure.write(key: _refreshTokenKey, value: refreshToken).timeout(_secureTimeout);
    } catch (_) {}
  }

  Future<bool> get hasSession async {
    final token = await accessToken;
    return token != null && token.isNotEmpty && (host?.isNotEmpty ?? false);
  }

  Future<void> clearSession() async {
    await _prefs.remove(_accessTokenKey);
    await _prefs.remove(_refreshTokenKey);
    await _prefs.remove(_usernameKey);
    try {
      await _secure.delete(key: _accessTokenKey).timeout(_secureTimeout);
      await _secure.delete(key: _refreshTokenKey).timeout(_secureTimeout);
    } catch (_) {}
  }
}
