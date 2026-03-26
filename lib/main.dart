import 'package:fifth_onboarding_screen/core/services/shared_pref_service.dart';
import 'package:flutter/material.dart';
import 'core/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isSeen = await SharedPrefService.getOnboardingStatus();
  runApp(const App(isSeen: isSeen));
}
