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
            SkipButtonWidget(onSkipPress: onButtonPress),
            const SizedBox(height: 50),

            /// Onboarding Data
            OnboardingDataWidget(
              pageCtrl: _pageCtrl,
              onPageChanged: (index) => setState(() => _pageIndex = index),
            ),

            /// Dot Indicator
            DotIndicatorWidget(pageCtrl: _pageCtrl, onDotClicked: onDotClicked),
            SizedBox(height: 150.0),

            /// Next Button
            NextButtonWidget(
              onNextPressed: onButtonPress,
              isLastPage: (_pageIndex == 3),
            ),
          ],
        ),
      ),
    );
  }

  void onButtonPress() {
    //if (){} else {}
  }

  /// Dot Clicked
  void onDotClicked(int index) {
    _pageCtrl.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
