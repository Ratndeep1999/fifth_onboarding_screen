import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  /// Singleton
  SharedPrefService._internal();

  static final SharedPrefService _instance = SharedPrefService._internal();

  static SharedPrefService get instance => _instance;

  static const String onboardingKey = "onboarding_key";

  /// Set Onboarding Status
  static Future<void> setOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(onboardingKey, true);
  }

  /// Get Onboarding Status
  static Future<bool> getOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(onboardingKey) ?? false;
  }

  /// Clear Onboarding State
  static Future<void> clearOnboardingState() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(onboardingKey);
  }
}
