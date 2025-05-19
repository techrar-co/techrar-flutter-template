import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui' as ui;

import '../../../main.dart';

class SharedPreference {
  SharedPreference._();
  static SharedPreference? _instance;
  static SharedPreference get instance => _instance ??= SharedPreference._();

  Future<bool> save(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is int) return await prefs.setInt(key, value);
    if (value is bool) return await prefs.setBool(key, value);
    if (value is double) return await prefs.setDouble(key, value);
    return await prefs.setString(key, value);
  }

  Future<dynamic> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

  // * Localization Control
  Future<void> getLocale(context) async {
    String? locale = await read('locale');
    if (locale != null && ui.window.locale.languageCode != locale) switchLocale(context);
  }

  setLocale(String locale) async {
    save('locale', locale);
  }

  switchLocale(context) async {
    MyApp.currentLocale = MyApp.currentLocale.languageCode == 'ar' ? const Locale('en') : const Locale('ar');
    setLocale(MyApp.currentLocale.languageCode);
    MyApp.setLocale(context);
  }

  switchLocaleToArabic(context) async {
    MyApp.currentLocale = const Locale('ar');
    setLocale(MyApp.currentLocale.languageCode);
    MyApp.setLocale(context);
  }

  switchLocaleToEnglish(context) async {
    MyApp.currentLocale = const Locale('en');
    setLocale(MyApp.currentLocale.languageCode);
    MyApp.setLocale(context);
  }
}
