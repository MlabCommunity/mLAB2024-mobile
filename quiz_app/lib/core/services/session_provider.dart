import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_type.dart';
import '../network/api_constants.dart';

final sessionProvider = Provider<SessionProvider>((ref) => SessionProvider());

class SessionProvider {
  final _storage = const FlutterSecureStorage();

  static const _accessTokenKey = 'accessToken';
  static const _refreshTokenKey = 'refreshToken';

  Future<void> checkFirstRun() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('firstRun')) {
      debugPrint(prefs.containsKey('firstRun').toString());
      await prefs.setBool('firstRun', true);
      await deleteTokens();
    }
  }

  Future<bool> isAuthenticated() async {
    return await accessToken != null;
  }

  Future<bool> isLoggedIn() async {
    return await refreshToken != null;
  }

  Future<UserType?> getUserType() async {
    if(!await isLoggedIn()){
      return null;
    }

    final accessToken = await this.accessToken;
    if(JwtDecoder.decode(accessToken!)[ApiConstants.userRoleTokenKey] == 'Guest'){
      return UserType.guest;
    }
    else if(JwtDecoder.decode(accessToken)[ApiConstants.userRoleTokenKey] == 'User'){
      return UserType.user;
    }
    return null;
  }

  Future<void> saveTokens({required String accessToken, required String refreshToken}) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
    await _storage.write(key: _refreshTokenKey, value: refreshToken);
  }

  Future<String?> get accessToken async {
    return await _storage.read(key: _accessTokenKey);
  }

  Future<String?> get refreshToken async {
    return await _storage.read(key: _refreshTokenKey);
  }

  Future<void> deleteTokens() async {
    await _storage.delete(key: _accessTokenKey);
    await _storage.delete(key: _refreshTokenKey);
  }
}
