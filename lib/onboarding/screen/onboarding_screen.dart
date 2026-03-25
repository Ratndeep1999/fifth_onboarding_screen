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
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            /// Icon
            Image(
              image: AssetImage(AppIcons.kOnboarding_icon4),
              height: 280,
              width: 280,
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
            const SizedBox(height: 30),

            /// Dot Indicator

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
