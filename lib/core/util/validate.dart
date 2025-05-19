import 'dart:developer';
import 'package:universal_io/io.dart';

import 'package:flutter/foundation.dart';

// Auth validation
bool validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{1,}))$';

  RegExp regExp = RegExp(pattern);

  return regExp.hasMatch(value);
}

bool validateMobile(String value) {
  String pattern = r'^(05)[0-9]{8}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

bool validateIban(String value) {
  value = value.replaceAll(" ", "").toUpperCase();
  String pattern = r"^(sa|SA)\d{22}$";
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

bool validateName(String value) {
  if (value.isEmpty || value.length < 2 || value.length > 50) {
    return false;
  }
  return true;
}

bool validateDescription(String value) {
  if (value.isEmpty || value.length < 5) {
    return false;
  }
  return true;
}

bool validatePassword(String value) {
  if ((value.length < 6) || value.isEmpty) {
    return false;
  }
  return true;
}

Future<bool> validateConnection() async {
  bool connected = false;
  if (kIsWeb) return true;
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      connected = true;
      log('connection', name: 'Validate/validateConnection');
    } else {
      connected = false;
    }
  } on SocketException catch (_) {
    connected = false;
    log('not connected', name: 'Validate/validateConnection');
  }
  return connected;
}

bool hasArabic(String text) {
  return text.contains(RegExp(r'[\u0600-\u06FF]'), 0) ? true : false;
}

String removeArabic(String text) {
  return text.replaceAll(RegExp(r'[\u0600-\u06FF]'), '');
}

String removeEnglish(String text) {
  return text.replaceAll(RegExp(r'[A-Za-z]'), '');
}

bool hasEnglish(String text) {
  return text.contains(RegExp(r'[A-Za-z]'), 0) ? true : false;
}

// generals
bool isNumeric(String s) {
  return double.tryParse(s) != null;
}
