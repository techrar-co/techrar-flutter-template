import 'package:flutter/material.dart';

import '../exports/core.dart';

class ActionButton extends StatelessWidget {
  final bool enabled;
  final String title;
  final Color titleColor;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  final Color? color;

  const ActionButton({
    super.key,
    required this.title,
    required this.onTap,
    this.margin,
    this.color,
    this.titleColor = kBackgroundColor,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: onTap,
      enabled: enabled,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: Borders.sBorderRadius,
          color: enabled ? color ?? kFontsColor : Colors.grey,
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 12, color: titleColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
