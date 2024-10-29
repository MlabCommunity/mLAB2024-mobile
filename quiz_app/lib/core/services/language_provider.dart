import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends StateNotifier<Locale> {
  LanguageProvider() : super(const Locale('en')) {
    _initLocale();
  }

  Future<void> _initLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode');
    if (languageCode != null) {
      state = Locale(languageCode);
    }
  }

  Future<String> getLocaleCode() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode');
    if (languageCode != null) {
      return Locale(languageCode).languageCode;
    }
    return 'en';
  }

  Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    state = locale;
    await prefs.setString('languageCode', locale.languageCode);
  }
}

final languageProvider = StateNotifierProvider<LanguageProvider, Locale>((ref) => LanguageProvider());
