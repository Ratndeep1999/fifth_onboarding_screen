import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
    required this.onNextPressed,
    required this.isLastPage,
  });

  final VoidCallback onNextPressed;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onNextPressed,
        child: Text(isLastPage ? "Get Started" : "Next"),
      ),
    );
  }
}
