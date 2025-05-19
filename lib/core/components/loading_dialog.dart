import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../exports/core.dart';

class LoadingDialog {
  static Widget mainProgressWidget = Lottie.asset(Assets.kLoadingAnimationAsset, height: 50, width: 50);
  static Widget loadingWidget = Center(child: Lottie.asset(Assets.kLoadingAnimationAsset, width: 150.0, height: 150.0));

  final int timeout;
  final BuildContext context;
  final bool isDismissible;
  BuildContext? _dismissingContext;
  bool isShowing = false;

  LoadingDialog(
    this.context, {
    this.isDismissible = true,
    this.timeout = 7,
  });

  Future<bool> show() async {
    try {
      if (!isShowing) {
        showDialog<dynamic>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            _dismissingContext = context;
            return WillPopScope(
              onWillPop: () async => false,
              child: Center(
                child: _Body(timeout: timeout, hideFunction: hide),
              ),
            );
          },
        );
        await Future.delayed(const Duration(milliseconds: 200));
        isShowing = true;
        return true;
      } else {
        return false;
      }
    } catch (err) {
      isShowing = false;
      log(err.toString(), name: 'LoadingDialog/show');
      return false;
    }
  }

  Future<bool> hide() async {
    if (_dismissingContext == null) return Future.value(true);
    try {
      if (isShowing) {
        isShowing = false;
        if (Navigator.of(_dismissingContext!).canPop()) {
          Navigator.of(_dismissingContext!).pop();
        }
        return Future.value(true);
      } else {
        return Future.value(false);
      }
    } catch (err) {
      log(err.toString(), name: 'LoadingDialog/hide');
      return Future.value(false);
    }
  }
}

class _Body extends StatefulWidget {
  final int timeout;
  final Function hideFunction;
  const _Body({required this.timeout, required this.hideFunction});

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  bool showCancelButton = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: widget.timeout), () {
      showCancelButton = true;
    }).then((value) => mounted ? setState(() {}) : null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kTransparent,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 8.0),
                Align(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    width: 200.0,
                    height: 200.0,
                    child: LoadingDialog.mainProgressWidget,
                  ),
                ),
                const SizedBox(width: 8.0),
              ],
            ),
            AnimatedOpacity(
              opacity: showCancelButton ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: RoundedButton(
                  margin: const EdgeInsets.only(top: 10),
                  title: "cancel".translate,
                  buttonColor: kFontsColor,
                  titleColor: kWhite,
                  onTap: () {
                    if (showCancelButton) {
                      widget.hideFunction();
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
