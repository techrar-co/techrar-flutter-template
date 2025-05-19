import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:techrar_captain/core/localization/constants.dart';

import '../components/alert_dialog_box.dart';

class Nav {
  static final GlobalKey mainScaffoldNavbarKey = GlobalKey(debugLabel: 'main_scaffold_navbar');
  static Future<dynamic> openPage({
    required BuildContext context,
    required Widget page,
    bool isAnimated = false,
    bool isPushReplaced = false,
    Map<String, dynamic>? args,
    bool useRootNavigator = false,
  }) async {
    if (isPushReplaced) {
      return await Navigator.of(context, rootNavigator: useRootNavigator).pushReplacement(
        MaterialPageRoute(
          settings: RouteSettings(name: page.toString(), arguments: args),
          builder: (context) => page,
        ),
      );
    } else {
      return await Navigator.of(context, rootNavigator: useRootNavigator).push(
        MaterialPageRoute(
          settings: RouteSettings(name: page.toString(), arguments: args),
          builder: (context) => page,
        ),
      );
    }
  }

  static Future<dynamic> popPage(context, {args}) async {
    return Navigator.pop(context, args);
  }

  static void switchTab(int page) {
    try {
      (mainScaffoldNavbarKey.currentWidget as BottomNavigationBar).onTap!(page);
    } catch (e) {
      log("couldn't switch tabs");
    }
  }

  static openUrl(context, {required String url, String? errorMsg, launcher.LaunchMode? launchMode}) async {
    try {
      launcher.launchUrl(Uri.parse(url), mode: launchMode ?? launcher.LaunchMode.platformDefault);
    } catch (e) {
      log("Couldn't open $url");
      await AlertDialogBox.showAlert(context, message: errorMsg ?? "general_api_error".translate);
    }
  }
}
