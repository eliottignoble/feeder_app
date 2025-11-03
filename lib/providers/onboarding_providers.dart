import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:feeed/utils/shared_preferences_constants.dart';

class OboardingProviders extends ChangeNotifier {
  bool _isOnboardingCompleted = false;

  bool get isOnboardingCompleted => _isOnboardingCompleted;

  Future<void> loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _isOnboardingCompleted =
        prefs.getBool(SharedPreferencesConstants.IsOnboardingCompleted) ??
        false;
    notifyListeners();
  }

  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedPreferencesConstants.IsOnboardingCompleted, true);
    _isOnboardingCompleted = true;
    notifyListeners();
  }
}
