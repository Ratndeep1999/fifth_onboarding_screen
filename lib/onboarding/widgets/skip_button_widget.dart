import 'package:flutter/material.dart';

class SkipButtonWidget extends StatelessWidget {
  final VoidCallback onSkipPress;

  const SkipButtonWidget({super.key, required this.onSkipPress});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topRight,
      child: TextButton(
        onPressed: onSkipPress,
        child: Text(
          "Skip",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
