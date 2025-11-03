import 'package:feeed/app.dart';
import 'package:feeed/providers/onboarding_providers.dart';
import 'package:flutter/material.dart';
import 'package:feeed/router/router.dart';
import 'package:feeed/utils/shared_preferences_constants.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // instance du store
  final oboardingProviders = OboardingProviders();
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
