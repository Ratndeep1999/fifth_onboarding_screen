import 'package:fifth_onboarding_screen/core/services/shared_pref_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: SharedPrefService.clearOnboardingState,
            child: Text("Clear State"),
          ),
        ),
      ),
    );
  }
}
