import 'package:flutter/material.dart';

import '../exports/core.dart';

Future<T?> showCustomBottomSheet<T>(
  BuildContext context, {
  required Widget child,
  String? title,
  ScrollPhysics? scrollPhysics,
  bool showCancelButton = false,
  bool isDismissible = true,
  bool scrollable = true,
  bool isScrollControlled = true,
  Widget? persistentFooter,
  EdgeInsets? padding,
  Color? backgroundColor,
  double? height,
  bool largeBottomPadding = true,
  EdgeInsets? bottomPadding,
}) async {
  return showModalBottomSheet<T>(
    routeSettings: RouteSettings(name: child.toString()),
    isScrollControlled: isScrollControlled,
    elevation: 0,
    useRootNavigator: true,
    enableDrag: isDismissible,
    isDismissible: isDismissible,
    backgroundColor: kTransparent,
    context: context,
    builder: (BuildContext context) {
      final EdgeInsets viewInsets = MediaQuery.viewInsetsOf(context);
      final EdgeInsets viewPadding = MediaQuery.paddingOf(context);
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
          color: backgroundColor ?? kBackgroundColor,
        ),
        margin: const EdgeInsets.only(top: kToolbarHeight + 10),
        padding: bottomPadding ??
            (largeBottomPadding
                ? EdgeInsets.only(bottom: viewInsets.bottom + viewPadding.bottom + 40)
                : const EdgeInsets.only(bottom: Insets.m)),
        child: SafeArea(
          child: SizedBox(
            height: height,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    right: 20,
                    left: 20,
                  ),
                  height: title == null ? 30 : kToolbarHeight + 10,
                  decoration: title == null
                      ? null
                      : const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: kGrey,
                              width: 0.2,
                            ),
                          ),
                        ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 5,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: kGrey2,
                        ),
                      ),
                      if (title != null) const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          if (title != null)
                            Text(
                              title,
                              style: TextStyles.t1,
                              maxLines: 1,
                            )
                          else
                            const SizedBox(),
                          if (showCancelButton)
                            Bounce(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(PhosphorIcons.x_bold),
                            )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: scrollable
                      ? SingleChildScrollView(
                          padding: EdgeInsets.only(
                            top: padding?.top ?? 10,
                            right: padding?.right ?? 20,
                            left: padding?.left ?? 20,
                            bottom: padding?.bottom ?? 0,
                          ),
                          physics: scrollPhysics ?? const BouncingScrollPhysics(),
                          child: child,
                        )
                      : Padding(
                          padding: EdgeInsets.only(
                            top: padding?.top ?? 10,
                            right: padding?.right ?? 20,
                            left: padding?.left ?? 20,
                            bottom: padding?.bottom ?? 0,
                          ),
                          child: child,
                        ),
                ),
                if (persistentFooter != null) persistentFooter
              ],
            ),
          ),
        ),
      );
    },
  );
}

showActionSheet({required BuildContext context, required List<Widget> actions, String? title}) async {
  await showModalBottomSheet(
    routeSettings: RouteSettings(name: title ?? '${context.widget.toString()}ActionSheet'),
    isScrollControlled: false,
    useRootNavigator: true,
    enableDrag: true,
    isDismissible: true,
    backgroundColor: kTransparent,
    context: context,
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.l) +
            EdgeInsets.only(
              bottom: (MediaQuery.of(context).viewPadding.bottom > 0) ? 0 : 30,
            ),
        child: SeparatedColumn(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          separator: const SizedBox(height: Insets.m),
          children: [
            ...actions,
            RoundedButton(
              title: "cancel".translate,
              onTap: () => Nav.popPage(context),
              buttonColor: kRed1,
            ),
          ],
        ),
      ),
    ),
  );
}
