import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../main.dart';

extension StringCase on String {
  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String get lowerCase {
    return toLowerCase();
  }

  String get upperCase {
    return toUpperCase();
  }

  String get snakeCase {
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    return replaceAllMapped(exp, (Match m) => ('_${m.group(0)}')).toLowerCase().replaceAll("-", "_");
  }
}

extension LocalizedInsets on EdgeInsets {
  EdgeInsets relative() {
    if (Directionality.of(MyApp.appKey.currentContext!) == TextDirection.rtl) {
      return EdgeInsets.fromLTRB(right, top, left, bottom);
    } else {
      return EdgeInsets.fromLTRB(left, top, right, bottom);
    }
  }

  operator +(EdgeInsets insets) {
    return EdgeInsets.only(
        top: top + insets.top, left: left + insets.left, bottom: bottom + insets.bottom, right: right + insets.right);
  }
}

extension LocalizedBorder on Border {
  Border relative() {
    if (Directionality.of(MyApp.appKey.currentContext!) == TextDirection.rtl) {
      return Border(bottom: bottom, left: right, right: left, top: top);
    } else {
      return this;
    }
  }
}

extension LocalizedAlignment on Alignment {
  Alignment relative() {
    if (Directionality.of(MyApp.appKey.currentContext!) == TextDirection.rtl) {
      return Alignment(x * -1, y);
    } else {
      return Alignment(x, y);
    }
  }
}

extension HexColor on Color {
  static Color? fromHex(String hexString) {
    hexString = hexString.replaceAll("#", "");
    if (hexString.length == 6) {
      hexString = "FF$hexString";
    }
    if (hexString.length == 8) {
      return Color(int.parse("0x$hexString"));
    } else {
      return null;
    }
  }

  String get hex => '#${value.toRadixString(16).substring(2)}';
}

extension TextStyleExtensions on TextStyle {
  /// Shortcut for color
  TextStyle withColor(Color v) => copyWith(color: v);

  /// Shortcut for fontSize
  TextStyle withSize(double v) => copyWith(fontSize: v);

  /// Shortcut for fontWeight
  TextStyle withWeight(FontWeight v) => copyWith(fontWeight: v);
}

extension ArNumbersConverter on String {
  get validateNumbers {
    Map<String, String> arNumbersConverter = {
      "٠": "0",
      "١": "1",
      "٢": "2",
      "٣": "3",
      "٤": "4",
      "٥": "5",
      "٦": "6",
      "٧": "7",
      "٨": "8",
      "٩": "9",
    };
    return characters.map((e) => arNumbersConverter[e] ?? e).join();
  }
}

extension PrettyJson on Map {
  String get prettyJson {
    return const JsonEncoder.withIndent('  ').convert(this);
  }
}

extension TimeOfDayExtension on TimeOfDay {
  static TimeOfDay fromString(String time) {
    List<int> toTime = List<int>.from(
      time.replaceAll(RegExp('[AaPp][Mm]'), '').split(":").map((e) => int.parse(e)).toList(),
    );
    toTime[0] += (time.toLowerCase().contains("pm") ? 12 : 0);

    return TimeOfDay.fromDateTime(DateTime(1999, 1, 1, toTime[0], toTime[1]));
  }

  static String toJson(TimeOfDay time) {
    return '${time.hour}:${time.minute}:00';
  }

  /// e.g. 12:00 AM
  String get dayTime12 {
    final temp = DateTime.now();
    return (DateFormat('hh:mm a', MyApp.lang)..useNativeDigits = false)
        .format(DateTime(temp.year, temp.month, temp.day, hour, minute));
  }

  /// e.g. 03:49:28 AM
  String get dateTimeString {
    final temp = DateTime.now();
    return (DateFormat('dd-MM-y hh:mm:ss a', MyApp.lang)..useNativeDigits = false)
        .format(DateTime(temp.year, temp.month, temp.day, hour, minute));
  }

  /// e.g. 22:26
  String get Hm {
    final temp = DateTime.now();
    return (DateFormat.Hm(MyApp.lang)..useNativeDigits = false)
        .format(DateTime(temp.year, temp.month, temp.day, hour, minute));
  }

  bool isBefore(TimeOfDay other) {
    if (hour < other.hour) return true;
    if (hour == other.hour && minute < other.minute) return true;
    return false;
  }

  bool isAfter(TimeOfDay other) {
    if (hour > other.hour) return true;
    if (hour == other.hour && minute > other.minute) return true;
    return false;
  }
}

extension DateTimeExtension on DateTime {
  /// e.g. 12:00 AM
  String get dayTime12 {
    return (DateFormat('hh:mm a', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g. Aug 10, 1999 12:00 AM
  String get yMMMMdhm {
    return (DateFormat.yMMMd(MyApp.lang)..useNativeDigits = false).add_jm().format(this);
  }

  /// e.g. Aug 10, 1999 12:00 AM
  String get intercomDateFormat {
    return (DateFormat.yMMMd('en')..useNativeDigits = false).add_jm().format(this);
  }

  /// e.g.  August 10, 1999
  String get eyMMMMd {
    return (DateFormat('EEEE MMM dd, y', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g.  August 10, 1999
  String get yMMMMd {
    return (DateFormat.yMMMMd(MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// 10 August 12:00 AM
  String get dMMMMhm {
    return (DateFormat('dd MMMM hh:mm a', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g. 10-08-1999
  String get dateString {
    return (DateFormat('dd-MM-y', MyApp.lang)..useNativeDigits = false).format(this);
  }

  String get apiDateString {
    return (DateFormat('y-MM-dd')..useNativeDigits = false).format(this);
  }

  /// e.g. 10-08-1999 03:49:28 AM
  String get dateTimeString {
    return (DateFormat('dd-MM-y hh:mm:ss a', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g. 22:26
  String get Hm {
    return (DateFormat.Hm(MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g. 10/8/1999
  String get yMd {
    return (DateFormat.yMd(MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// 10 August
  String get dMMMM {
    return (DateFormat('dd MMMM', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// 10 Aug
  String get dMMM {
    return (DateFormat('dd MMM', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g. Sun
  String get e {
    return (DateFormat('E', MyApp.lang)..useNativeDigits = false).format(this);
  }

  /// e.g. Sunday
  String get eeee {
    return (DateFormat('EEEE', MyApp.lang)..useNativeDigits = false).format(this);
  }

  DateTime addSeconds(int seconds) => add(Duration(seconds: seconds));

  DateTime addMinutes(int minutes) => add(Duration(minutes: minutes));

  DateTime addHours(int hours) => add(Duration(hours: hours));

  DateTime addDays(int days) => add(Duration(days: days));

  DateTime subtractDays(int days) => subtract(Duration(days: days));

  DateTime addWeeks(int weeks) => add(Duration(days: weeks * 7));

  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

/// Extension on num to perform general operations
extension NumExtension on num {
  /// Compute percentage of a number
  num percentage(num percent) => (this * percent) / 100;
}
