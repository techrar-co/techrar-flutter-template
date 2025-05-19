import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:techrar_captain/app/new_feature/views/new_feature_view.dart';

import 'core/exports/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  static Locale currentLocale = window.locale;
  static String get lang => currentLocale.languageCode;
  static String get langAlt => currentLocale.languageCode == 'en' ? 'ar' : 'en';
  static void setLocale(BuildContext context) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(currentLocale);
  }

  const MyApp({super.key});
  static final GlobalKey<NavigatorState> _appKey = GlobalKey();
  static GlobalKey get appKey => _appKey;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: MyApp._appKey,
      debugShowCheckedModeBanner: false,
      title: 'Techrar Captain',
      locale: _locale,
      supportedLocales: appSupportedLocales,
      localizationsDelegates: const [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      home: const NewFeatureView(),
    );
  }
}
