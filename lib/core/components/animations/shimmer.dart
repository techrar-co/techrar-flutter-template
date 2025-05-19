import 'package:flutter/material.dart';

import '../../exports/core.dart';

/// Shimmer Effect is used for loading the widget in an attractive form
class Shimmer extends StatefulWidget {
  final Widget child, placeholder;
  final bool isLoading;
  final AlignmentGeometry? alignment;
  final Duration? duration;

  const Shimmer({
    super.key,
    required this.child,
    required this.isLoading,
    required this.placeholder,
    this.alignment,
    this.duration,
  });

  @override
  _ShimmerState createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 500))
      ..forward()
      ..repeat(reverse: true);
    animation = Tween(begin: 1.0, end: 0.2).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: widget.duration ?? const Duration(seconds: 1),
      alignment: widget.alignment ?? Alignment.center,
      crossFadeState: (widget.isLoading) ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: FadeTransition(
        opacity: animation as Animation<double>,
        child: widget.placeholder,
      ),
      secondChild: Builder(builder: (context) {
        if (!widget.isLoading) controller.stop();
        return widget.child;
      }),
    );
  }
}

class PlaceHolderContainer extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  final double? height, width;
  final BoxDecoration? boxDecoration;
  const PlaceHolderContainer({super.key, this.child, this.height, this.width, this.margin, this.boxDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width ?? MediaQuery.of(context).size.width * 0.4,
      height: height ?? MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
          color: boxDecoration?.color ?? kLightGrey,
          shape: boxDecoration?.shape ?? BoxShape.rectangle,
          border: boxDecoration?.border,
          boxShadow: boxDecoration?.boxShadow,
          image: boxDecoration?.image,
          backgroundBlendMode: boxDecoration?.backgroundBlendMode,
          gradient: boxDecoration?.gradient,
          borderRadius: boxDecoration?.shape == BoxShape.circle ? null : boxDecoration?.borderRadius),
      child: child,
    );
  }
}

class TextPlaceHolder extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final double? height, width;
  final double fontSize;
  final BoxDecoration? boxDecoration;

  const TextPlaceHolder({super.key, this.margin, this.height, this.width, required this.fontSize, this.boxDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height ?? fontSize,
      decoration: BoxDecoration(
        color: boxDecoration?.color ?? kLightGrey,
        shape: boxDecoration?.shape ?? BoxShape.rectangle,
        border: boxDecoration?.border,
        boxShadow: boxDecoration?.boxShadow,
        image: boxDecoration?.image,
        backgroundBlendMode: boxDecoration?.backgroundBlendMode,
        gradient: boxDecoration?.gradient,
        borderRadius: boxDecoration?.borderRadius ?? Borders.mBorderRadius,
      ),
    );
  }
}
