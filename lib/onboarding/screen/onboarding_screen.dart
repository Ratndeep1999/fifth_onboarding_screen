import 'package:fifth_onboarding_screen/utils/constants/app_icons.dart';
import 'package:fifth_onboarding_screen/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.0),
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
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),

            /// Icon
            Image(image: AssetImage(AppIcons.kOnboarding_icon1)),
            const SizedBox(height: 50),

            /// Title
            Text(AppTexts.kOnBoardingTitle1),
            const SizedBox(height: 50),

            /// Description
            Text(AppTexts.kOnBoardingDesc1),
            const SizedBox(height: 50),

            /// Dot Indicator

            /// Next Button
            FilledButton(onPressed: () {}, child: Text("Next")),
          ],
        ),
      ),
    );
  }
}
