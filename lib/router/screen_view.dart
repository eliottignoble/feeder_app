import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

enum AppScreens {
  home,
  exampleView,
  register,
  login,
  addPlan,
  paywall,
  profile,
  onboarding1,
}

extension AppScreensExtension on AppScreens {
  String get toPath {
    switch (this) {
      case AppScreens.home:
        return '/';
      case AppScreens.exampleView:
        return '/example-view';
      case AppScreens.register:
        return '/register';
      case AppScreens.login:
        return '/login';
      case AppScreens.addPlan:
        return '/add-plan';
      case AppScreens.paywall:
        return '/paywall';
      case AppScreens.profile:
        return '/profile';
      case AppScreens.onboarding1:
        return '/onboarding-step-1';
    }
  }
}
