import 'package:feeed/app.dart';
import 'package:feeed/providers/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:feeed/router/router.dart';
import 'package:feeed/utils/shared_preferences_constants.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  prefs.setBool(SharedPreferencesConstants.IsOnboardingCompleted, false);
  // instance du store
  final oboardingProviders = OboardingProvider();
  // load du storage
  await oboardingProviders.loadFromPrefs();

  // instance du store avec les constantes du store + store
  final navigationRouter = NavigationRouter(
    SharedPreferencesConstants(),
    oboardingProviders,
  );

  runApp(
    ChangeNotifierProvider.value(
      value: oboardingProviders,
      child: MyApp(navigationRouter: navigationRouter),
    ),
  );
}
