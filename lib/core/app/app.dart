import 'package:fifth_onboarding_screen/onboarding/screen/onboarding_screen.dart';
import 'package:fifth_onboarding_screen/screens/home_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key, required this.isSeen});

  final bool isSeen;

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: isSeen ? HomeScreen() : OnboardingScreen(),
    );
  }
}
