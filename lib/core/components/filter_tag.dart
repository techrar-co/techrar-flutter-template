import 'package:flutter/material.dart';

import '../constants/constants.dart';

class FilterTag extends StatelessWidget {
  const FilterTag({
    super.key,
    required this.title,
    this.isSelected = false,
    this.shrink = false,
    this.borderRadius,
    this.fillColor,
  });

  final bool shrink;
  final bool isSelected;
  final String title;
  final BorderRadius? borderRadius;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: shrink ? const EdgeInsets.symmetric(horizontal: 10, vertical: 7) : const EdgeInsets.all(10),
      margin: shrink ? const EdgeInsets.symmetric(horizontal: 5) : const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? (fillColor ?? kPrimaryColor) : kWhite,
        borderRadius: borderRadius ?? Borders.lBorderRadius,
        border: Border.all(
          color: isSelected ? kWhite : kGrey.withOpacity(0.5),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(color: isSelected ? kWhite : kGrey),
      ),
    );
  }
}
