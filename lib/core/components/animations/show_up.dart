import 'dart:async';
import 'package:flutter/material.dart';

class ShowUp extends StatefulWidget {
  final Widget child;
  final int? delay;
  final Duration? duration;

  const ShowUp({super.key, this.delay, required this.child, this.duration});

  @override
  State<ShowUp> createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _animOffset;
  bool _animControllerDipsos = false;
  @override
  void initState() {
    super.initState();

    _animController = AnimationController(vsync: this, duration: widget.duration ?? const Duration(milliseconds: 600));
    final curve = CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset = Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero).animate(curve);

    if (widget.delay == null) {
      _animController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay!), () {
        if (!_animControllerDipsos) _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    _animControllerDipsos = true;
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animController,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
