import 'package:flutter/material.dart';

import 'full_screen_banner.dart';

class RefreshableScreenBanner extends StatelessWidget {
  final Future<void> Function() onRefresh;
  final String message;
  const RefreshableScreenBanner({super.key, required this.onRefresh, required this.message});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: SizedBox.expand(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.2),
            child: FullScreenBanner(message),
          ),
        ),
      ),
    );
  }
}
