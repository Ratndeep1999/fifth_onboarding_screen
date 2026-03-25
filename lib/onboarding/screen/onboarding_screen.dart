import 'package:fifth_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:fifth_onboarding_screen/utils/constants/app_icons.dart';
import 'package:fifth_onboarding_screen/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            NextButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () => debugPrint("Next Press"),
        child: Text(true ? "Get Started" : "Next"),
      ),
    );
  }
}

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    super.key,
    required PageController pageCtrl,
    required this.onDotClicked,
    required this.isActive,
  }) : _pageCtrl = pageCtrl;

  final PageController _pageCtrl;
  final Function(int) onDotClicked;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageCtrl,
      count: onboardingData.length,
      onDotClicked: (index) => onDotClicked(index),
      effect: JumpingDotEffect(
        verticalOffset: 16.0,
        spacing: 16.0,
        dotHeight: 6.0,
        dotWidth: false ? 50.0 : 24.0,
        dotColor: Colors.purple.shade100,
        activeDotColor: Colors.purple,
      ),
    );
  }
}

class OnboardingDataWidget extends StatelessWidget {
  const OnboardingDataWidget({
    super.key,
    required PageController pageCtrl,
    required this.onPageChanged,
  }) : _pageCtrl = pageCtrl;

  final PageController _pageCtrl;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _pageCtrl,
        onPageChanged: onPageChanged,
        itemCount: onboardingData.length,
        itemBuilder: (ctx, index) {
          // Filter Single Item
          final item = onboardingData[index];
          return Column(
            children: [
              /// Icon
              Image(image: AssetImage(item.icon), height: 200, width: 200),
              const SizedBox(height: 50),

              /// Title
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.purple.shade400,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 20),

              /// Description
              Text(
                item.desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple.shade200,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

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
