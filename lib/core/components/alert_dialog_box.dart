import 'package:flutter/material.dart';
import '../exports/core.dart';

class AlertDialogBox {
  static Future<void> showSnackBar(
    context, {
    required String message,
    String? title,
    Duration? duration,
    bool isAlert = false,
    Color? color,
    Color? circleColor,
    Color? textColor,
    Color? borderColor,
    BorderRadiusGeometry? borderRadius,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: color ?? kPrimaryColor,
          behavior: SnackBarBehavior.floating,
          duration: duration ?? const Duration(seconds: 3),
          margin: const EdgeInsets.symmetric(horizontal: Insets.m, vertical: Insets.l),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor ?? kPrimaryColor, width: 0.5),
            borderRadius: borderRadius ?? Borders.mBorderRadius,
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Container(
                  margin: const EdgeInsets.only(bottom: Insets.s),
                  child: Text(
                    title,
                    style: TextStyles.h2b.withColor(textColor ?? kWhite),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      message,
                      maxLines: 2,
                      style: TextStyles.body1.withColor(textColor ?? kWhite),
                    ),
                  ),
                  const SizedBox(width: Insets.m),
                  if (isAlert)
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: circleColor ?? kRed1,
                        shape: BoxShape.circle,
                      ),
                    )
                ],
              ),
            ],
          )),
    );
  }

  static Future<bool?> showAlert(
    context, {
    required String message,
    String title = '',
    String buttonTitle = 'ok',
    bool dismissible = true,
  }) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: dismissible, // user must tap button!
      builder: (BuildContext context) {
        return ShowUp(
          child: AlertDialog(
            title: title.isNotEmpty
                ? Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kFontsColor,
                    ),
                    textAlign: TextAlign.center,
                  )
                : null,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
            backgroundColor: kBackgroundColor,
            contentPadding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  if (title.isEmpty) const SizedBox(height: 5),
                  Center(
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: RoundedButton(
                      buttonColor: kPrimaryColor,
                      title: buttonTitle.translate,
                      titleColor: Colors.white,
                      onTap: () => Nav.popPage(context, args: false),
                      height: Sizes.mCardHeight - 10,
                      padding: EdgeInsets.zero,
                      titleSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<bool?> showAssertionDialog(
    context, {
    String? message,
    bool locale = false,
    String title = '',
    String? continueButton,
    String? cancelButton,
    bool preferableChoice = true,
    bool dismissible = false,
  }) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: dismissible, // user must tap button!
      builder: (BuildContext context) {
        return ShowUp(
          child: AlertDialog(
            title: title != ''
                ? Text(
                    locale ? title.translate : title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                : null,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
            backgroundColor: kBackgroundColor,
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  if (message != null)
                    Center(
                      child: Text(
                        locale ? message.translate : message,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: RoundedButton(
                            margin: const EdgeInsets.only(top: 10),
                            buttonColor: kLight0,
                            title: cancelButton ?? 'cancel'.translate,
                            titleColor: kFontsColor,
                            onTap: () => Navigator.pop(context, false),
                            height: Sizes.mCardHeight - 10,
                            padding: EdgeInsets.zero,
                            titleSize: 14,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: RoundedButton(
                            margin: const EdgeInsets.only(top: 10),
                            buttonColor: preferableChoice ? kSecondaryColor : kRed2,
                            title: continueButton != null ? continueButton.translate : 'sure'.translate,
                            titleColor: kWhite,
                            onTap: () => Navigator.pop(context, true),
                            height: Sizes.mCardHeight - 10,
                            padding: EdgeInsets.zero,
                            titleSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<bool?> showCustomAlert(
    context, {
    String? title,
    String? message,
    bool locale = false,
    bool preferableChoice = true,
    bool isDismissible = false,
    String? continueButton,
    String? cancelButton,
    Function? onContinueButton,
  }) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: isDismissible, // user must tap button!
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => isDismissible,
          child: ShowUp(
            child: AlertDialog(
              title: title != null
                  ? Text(
                      locale ? title.translate : title,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  : null,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              backgroundColor: kBackgroundColor,
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    if (message != null)
                      Center(
                        child: Text(
                          locale ? message.translate : message,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          if (isDismissible)
                            Expanded(
                              child: RoundedButton(
                                margin: const EdgeInsets.only(top: 10),
                                buttonColor: kLight0,
                                title: cancelButton != null ? cancelButton.translate : 'cancel'.translate,
                                titleColor: kFontsColor,
                                onTap: () => Navigator.pop(context, false),
                                height: Sizes.mCardHeight - 10,
                                padding: EdgeInsets.zero,
                                titleSize: 14,
                              ),
                            ),
                          if (isDismissible) const SizedBox(width: 20),
                          Expanded(
                            child: RoundedButton(
                              margin: const EdgeInsets.only(top: 10),
                              buttonColor: preferableChoice ? kPrimaryColor as Color? : kRed2,
                              title: continueButton != null ? continueButton.translate : 'sure'.translate,
                              titleColor: kWhite,
                              onTap: onContinueButton as void Function()? ?? () => Navigator.pop(context, true),
                              height: Sizes.mCardHeight - 10,
                              padding: EdgeInsets.zero,
                              titleSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<bool?> showCustomAlert2(
    context, {
    String? title,
    String? message,
    bool popAfterAction = true,
    bool isDismissible = true,
    required List<RoundedButton> buttons,
  }) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: isDismissible, // user must tap button!
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => isDismissible,
          child: ShowUp(
            child: AlertDialog(
              title: title != null
                  ? Text(
                      title.translate,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  : null,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              backgroundColor: kBackgroundColor,
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    if (message != null)
                      Center(
                        child: Text(
                          message.translate,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: buttons
                            .map(
                              (e) => Expanded(
                                child: GestureDetector(
                                  child: e,
                                  onPanDown: (_) => popAfterAction ? Navigator.pop(context) : null,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
