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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            /// Skip Button
            Align(
              alignment: AlignmentGeometry.topRight,
              child: TextButton(
                onPressed: () => debugPrint("Skip Press"),
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
            ),
            const SizedBox(height: 20),

            /// Onboarding Data
            Expanded(
              child: PageView.builder(
                controller: _pageCtrl,
                onPageChanged: (index) {},
                itemCount: onboardingData.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      /// Icon
                      Image(
                        image: AssetImage(onboardingData[index].icon),
                        height: 180,
                        width: 180,
                      ),
                      const SizedBox(height: 50),

                      /// Title
                      Text(
                        AppTexts.kOnBoardingTitle1,
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
                        AppTexts.kOnBoardingDesc1,
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
            ),

            /// Dot Indicator
            SmoothPageIndicator(
              controller: _pageCtrl,
              count: onboardingData.length,
              onDotClicked: (index) {},
              effect: JumpingDotEffect(verticalOffset: 2),
            ),

            /// Next Button
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => debugPrint("Next Press"),
                child: Text(true ? "Get Started" : "Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
