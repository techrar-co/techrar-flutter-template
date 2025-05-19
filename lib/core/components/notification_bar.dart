import 'package:flutter/material.dart';

import '../exports/core.dart';

class NotificationBar {
  NotificationBar._();
  static NotificationBar? _instance;
  static NotificationBar get instance => _instance ??= NotificationBar._();

  // Implement NotificationBar, that will start with an animation and close with other animation :)
  Future<void> showNotification(BuildContext context, String message, {Widget? child, Duration? duration}) async {
    final entry = _createNotification(context, message, child: child, duration: duration);
    final overLay = Overlay.of(context);
    overLay.insert(entry); // show overlay
    await Future.delayed(duration ?? const Duration(seconds: 3, milliseconds: 200)); // wait 3 seconds
    entry.remove(); // hide overlay
  }

  OverlayEntry _createNotification(BuildContext context, String message, {Widget? child, Duration? duration}) {
    OverlayEntry entry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).padding.top, // to avoid the notch, or any other top padding
        left: Insets.m, // basic left padding
        child: TopNotificationBar(message: message, duration: duration, child: child),
      ),
    );
    return entry;
  }
}

class TopNotificationBar extends StatefulWidget {
  final Widget? child;
  final String? message;
  final Duration? duration;
  const TopNotificationBar({
    super.key,
    this.child,
    this.message,
    this.duration,
  }) : assert(child != null || message != null);

  @override
  State<TopNotificationBar> createState() => _TopNotificationBarState();
}

class _TopNotificationBarState extends State<TopNotificationBar> {
  bool collapsed = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 10), () {
      setState(() {
        collapsed = false;
      });
    });
    Future.delayed(widget.duration ?? const Duration(seconds: 3), () {
      setState(() {
        collapsed = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kTransparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        alignment: Alignment.centerLeft.relative(),
        clipBehavior: Clip.hardEdge,
        width: MediaQuery.of(context).size.width -
            Insets.m * 2, // maximum width of the screen, avoiding the left and right padding
        padding: const EdgeInsets.symmetric(horizontal: Insets.m, vertical: Insets.m),
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.95),
          borderRadius: Borders.mBorderRadius,
        ),
        child: widget.child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.message!,
                    style: TextStyles.body1b.withColor(kWhite),
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.symmetric(horizontal: Insets.s),
                  decoration: const BoxDecoration(
                    color: kRed1,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
      ),
    );
  }
}
