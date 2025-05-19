import 'package:flutter/material.dart';
import 'package:techrar_captain/main.dart';

import '../exports/core.dart';

class Insets {
  static const double scale = 1;

  static const double xs = 2 * scale;

  static const double s = 6 * scale;

  static const double m = 12 * scale;

  static const double l = 20 * scale;

  static const double xl = 24 * scale;

  static const double xxl = 36 * scale;
}

class Sizes {
  static const double xlCardHeight = 120.0;

  static const double lCardHeight = 80.0;

  static const double mCardHeight = 60.0;

  static const double sCardHeight = 40.0;

  static const double scale = 1;

  static const double mIcon = 20;

  static const double lIcon = 30;

  static const double xlIcon = 40;

  static const double sideBarSm = 150 * scale;

  static const double sideBarMed = 200 * scale;

  static const double sideBarLg = 290 * scale;

  static const double topBarHeight = 60;

  static const double topBarPadding = Insets.l;

  static const double topBar = topBarPadding + topBarHeight;
}

class Fonts {
  static const String varelaRound = "VarelaRound";
  static const String almarai = "Almarai";
}

class TextStyles {
  static const TextStyle varelaRound = TextStyle(
    fontFamily: Fonts.varelaRound,
    fontWeight: FontWeight.w400,
    color: kFontsColor,
    height: 1.1,
    fontFamilyFallback: [
      'Almarai',
      'Tajawal',
    ],
  );

  static const TextStyle almarai = TextStyle(
    fontFamily: Fonts.almarai,
    fontWeight: FontWeight.w400,
    color: kFontsColor,
    fontFamilyFallback: [
      'varelaRound',
      'Tajawal',
    ],
    height: 1.1,
  );

  static TextStyle get currentFont => MyApp.lang == 'ar' ? almarai : varelaRound;

  ///fontWeight: FontWeight.bold, fontSize: 32
  static TextStyle get logo => varelaRound.copyWith(fontWeight: FontWeight.bold, fontSize: 32);

  ///fontWeight: FontWeight.bold, fontSize: 26
  static TextStyle get t1 => currentFont.copyWith(fontWeight: FontWeight.bold, fontSize: 26);

  ///fontWeight: FontWeight.bold, fontSize: 22
  static TextStyle get t2 => currentFont.copyWith(fontWeight: FontWeight.bold, fontSize: 22);

  ///fontSize: 20
  static TextStyle get h1 => currentFont.copyWith(fontSize: 20);

  ///fontSize: 20, fontWeight: FontWeight.bold
  static TextStyle get h1b => currentFont.copyWith(fontSize: 20, fontWeight: FontWeight.bold);

  ///fontSize: 18
  static TextStyle get h2 => currentFont.copyWith(fontSize: 18);

  ///fontSize: 18, fontWeight: FontWeight.bold
  static TextStyle get h2b => currentFont.copyWith(fontSize: 18, fontWeight: FontWeight.bold);

  ///fontSize: 16
  static TextStyle get body1 => currentFont.copyWith(fontSize: 16);

  ///fontSize: 16, fontWeight: FontWeight.bold
  static TextStyle get body1b => currentFont.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

  ///fontSize: 14
  static TextStyle get body2 => currentFont.copyWith(fontSize: 14);

  ///fontSize: 14, fontWeight: FontWeight.bold
  static TextStyle get body2b => currentFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold);

  ///fontSize: 13
  static TextStyle get body3 => currentFont.copyWith(fontSize: 13);

  ///fontSize: 13, fontWeight: FontWeight.bold
  static TextStyle get body3b => currentFont.copyWith(fontSize: 13, fontWeight: FontWeight.bold);

  ///fontSize: 16
  static TextStyle get callOut => currentFont.copyWith(fontSize: 16);

  ///fontSize: 16, fontWeight: FontWeight.bold
  static TextStyle get callOutFocus => callOut.copyWith(fontWeight: FontWeight.bold);

  ///fontSize: 16
  static TextStyle get button => callOut;

  ///fontSize: 16
  static TextStyle get buttonSelected => button.copyWith(fontWeight: FontWeight.normal);

  ///fontSize: 13
  static TextStyle get footnote => body3;

  ///fontSize: 13, color: kGrey
  static TextStyle get hint => body3.withColor(kGrey);

  ///fontSize: 11, color: kGrey
  static TextStyle get hint2 => hint.withSize(11);

  ///fontSize: 10, color: kGrey
  static TextStyle get hint3 => hint.withSize(10);

  ///fontSize: 13
  static TextStyle get caption => footnote;

  ///fontSize: 13, decoration: TextDecoration.underline, color: Colors.blue
  static TextStyle get clickable => footnote.copyWith(decoration: TextDecoration.underline, color: Colors.blue);
}

class Borders {
  static final Border blackBorder = Border.all(color: kFontsColor, width: 1.5);

  static const BorderRadius sBorderRadius = BorderRadius.all(Radius.circular(5));
  static const BorderRadius mBorderRadius = BorderRadius.all(Radius.circular(10));
  static const BorderRadius lBorderRadius = BorderRadius.all(Radius.circular(15));
  static const BorderRadius xlBorderRadius = BorderRadius.all(Radius.circular(25));
  static BorderRadius diagonalBorderRadius(BuildContext context, double radius) => BorderRadius.only(
        topLeft: !isArabic() ? Radius.circular(radius) : Radius.zero,
        bottomRight: !isArabic() ? Radius.circular(radius) : Radius.zero,
        topRight: isArabic() ? Radius.circular(radius) : Radius.zero,
        bottomLeft: isArabic() ? Radius.circular(radius) : Radius.zero,
      );
}

class Styles {
  static const List<BoxShadow> boxShadow = [
    BoxShadow(blurRadius: 7, color: Colors.black12, offset: Offset(0, 4)),
  ];
  static const List<BoxShadow> unifiedShadow = [
    BoxShadow(blurRadius: 1, color: Colors.black12),
  ];

  /// blurRadius: 3, color: Colors.black12
  static const List<BoxShadow> unifiedShadow2 = [
    BoxShadow(blurRadius: 5, color: Colors.black12),
  ];
  static const List<BoxShadow> boxShadowTop = [
    BoxShadow(blurRadius: 2, color: Colors.black12, offset: Offset(0, -1)),
  ];

  static const List<BoxShadow> boxShadowBottom = [
    BoxShadow(blurRadius: 1, color: Colors.black12, offset: Offset(0, 1)),
  ];
  static const List<BoxShadow> boxShadowHeavy = [
    BoxShadow(blurRadius: 10, color: Colors.black38, offset: Offset(-2, 2)),
  ];
  static const BoxDecoration kContainerDecoration =
      BoxDecoration(boxShadow: boxShadow, borderRadius: Borders.mBorderRadius, color: kWhite);
}
