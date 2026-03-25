import 'package:fifth_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    super.key,
    required PageController pageCtrl,
    required this.onDotClicked,
  }) : _pageCtrl = pageCtrl;

  final PageController _pageCtrl;
  final Function(int) onDotClicked;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageCtrl,
      count: onboardingData.length,
      onDotClicked: (index) => onDotClicked(index),
      effect: ExpandingDotsEffect(
        spacing: 16.0,
        dotHeight: 6.0,
        dotWidth: 16.0,
        expansionFactor: 3.0,
        dotColor: Colors.purple.shade100,
        activeDotColor: Colors.purple,
      ),
    );
  }
}
