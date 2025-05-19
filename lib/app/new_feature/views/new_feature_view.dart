import 'package:flutter/material.dart';
import 'package:techrar_captain/core/exports/core.dart';

/// THIS IS A PLACEHOLDER
class NewFeatureView extends StatelessWidget {
  const NewFeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: kBackground2Color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: kGrey2),
        ),
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.widgets, size: 40, color: kGrey),
            SizedBox(height: 12),
            Text(
              'Placeholder',
              style: TextStyle(
                fontSize: 18,
                color: kGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'This is a placeholder for the XXXXXX feature.\nReplace with actual implementation.',
              textAlign: TextAlign.center,
              style: TextStyle(color: kGrey),
            ),
          ],
        ),
      ),
    );
  }
}
