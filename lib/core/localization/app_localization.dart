import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

class AppLocalization {
  AppLocalization(this.locale);

  final Locale locale;
  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  Map<String, dynamic>? _localizedValues;

  Future<void> load() async {
    String jsonStringValues = await rootBundle.loadString('$languagesPath/${locale.languageCode}.json');
    _localizedValues = json.decode(jsonStringValues);
  }

  //reformating the key as needed
  String findKey(String key) {
    if (key.characters.last == '.') {
      key = key.replaceAll('.', '');
    }
    return key;
  }

  String translate(String key) {
    String? result = '';
    Map<String, dynamic> map = {};
    try {
      key = findKey(key);

      if (key.contains('.')) {
        List<String> keys = key.split('.');
        for (var key in keys) {
          var temp = _localizedValues![key];
          if (temp is Map<String, dynamic>) map = temp;
        }
        result = map[keys.last];

        return result ?? key;
      }

      result = _localizedValues![key];

      // used if assets not pushed with the patch
      result ??= backupValues(key);

      return result ?? key;
    } catch (err) {
      log("Error translating $key");
      return key;
    }
  }

  // static member to have simple access to the delegate from Material App
  static const LocalizationsDelegate<AppLocalization> delegate = _AppLocalizationsDelegate();

  // Temp translations maps, used when assets not pushed with the patch
  String? backupValues(String key) {
    final String lang = isArabic() ? 'ar' : 'en';
    final Map<String, Map<String, String>> map = {
      'ar': {
        "report_issue": "أبلغ عن مشكلة",
        "morning": "صباح",
        "evening": "مساء",
        "night": "ليل",
        "deliver_suborder_without_scanning_qr_alert": "تأكيد التسليم بدون مسح الكود؟",
        "select_delivery_window": "أختر نافذة توصيل",
        "copy_url": "نسخ الرابط",
        "new": "جديد",
        "previous_day": "اليوم السابق",
        "next_day": "اليوم التالي"
      },
      'en': {
        "report_issue": "Report Issue",
        "morning": "Morning",
        "evening": "Evening",
        "night": "Night",
        "deliver_suborder_without_scanning_qr_alert": "Confirm delivery without QR code scan?",
        "select_delivery_window": "Select Delivery Window",
        "copy_url": "Copy URL",
        "new": "New",
        "previous_day": "Previous Day",
        "next_day": "Next Day"
      }
    };
    return map[lang]![key];
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return supportedLanguages.contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localization = AppLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}
