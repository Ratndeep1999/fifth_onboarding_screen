import 'package:fifth_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:flutter/material.dart';

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
          /// Filter Single Item
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
