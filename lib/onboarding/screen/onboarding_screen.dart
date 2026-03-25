import 'package:fifth_onboarding_screen/onboarding/widgets/dot_indicator_widget.dart';
import 'package:fifth_onboarding_screen/onboarding/widgets/next_button_widget.dart';
import 'package:fifth_onboarding_screen/onboarding/widgets/onboarding_data_widget.dart';
import 'package:fifth_onboarding_screen/onboarding/widgets/skip_button_widget.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageCtrl = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Skip Button Widget
            SkipButtonWidget(onSkipPress: () {}),
            const SizedBox(height: 50),

            /// Onboarding Data
            OnboardingDataWidget(
              pageCtrl: _pageCtrl,
              onPageChanged: (index) {},
            ),

            /// Dot Indicator
            DotIndicatorWidget(
              pageCtrl: _pageCtrl,
              onDotClicked: (index) {},
              isActive: false,
            ),
            SizedBox(height: 150.0),

            /// Next Button
            NextButtonWidget(onNextPressed: () {}, isLastPage: false),
          ],
        ),
      ),
    );
  }
}
