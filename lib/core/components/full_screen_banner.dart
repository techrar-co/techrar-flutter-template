import 'package:flutter/material.dart';
import 'package:techrar_captain/core/exports/core.dart';

class FullScreenBanner extends StatelessWidget {
  final bool loading;
  final String message;
  final Widget? icon;
  final double spacing;

  const FullScreenBanner(this.message, {super.key, this.loading = false, this.icon, this.spacing = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: spacing,
          children: <Widget>[
            if (loading) const CircularProgressIndicator(),
            if (icon != null) icon!,
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyles.t2.withColor(kGrey.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}
