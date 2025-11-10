import 'package:feeed/example_view.dart';
import 'package:feeed/features/account/presentation/account_view.dart';
import 'package:feeed/features/auth/presentation/login_view.dart';
import 'package:feeed/features/auth/presentation/register_view.dart';
import 'package:feeed/features/home/presentation/home_view.dart';
import 'package:feeed/features/onboarding/presentation/steps/onboarding_start.dart';
import 'package:feeed/features/paywall/presentation/paywall_view.dart';
import 'package:feeed/features/plan/presentation/plan_detail_view.dart';
import 'package:feeed/features/plan/presentation/plan_view.dart';
import 'package:feeed/features/shared/style/components/navigations/bottom_bar_shell.dart';
import 'package:feeed/providers/onboarding_provider.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:feeed/utils/shared_preferences_constants.dart';

class NavigationRouter {
  // call des providers + constants
  final SharedPreferencesConstants sharedPreferencesConstants;
  final OboardingProvider oboardingProviders;

  NavigationRouter(this.sharedPreferencesConstants, this.oboardingProviders);

  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter get router => _router;

  late final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppScreens.onboarding1.toPath,
        builder: (context, state) => OnboardingStart(),
      ),
      GoRoute(
        path: AppScreens.register.toPath,
        builder: (context, state) => RegisterView(),
      ),
      GoRoute(
        path: AppScreens.login.toPath,
        builder: (context, state) => LoginView(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return BottomBarShell(child: child);
        },
        routes: [
          GoRoute(
            path: AppScreens.home.toPath,
            builder: (context, state) => HomeView(),
          ),
          GoRoute(
            path: AppScreens.addPlan.toPath,
            builder: (context, state) => PlanView(),
          ),
          GoRoute(
            path: AppScreens.profile.toPath,
            builder: (context, state) => AccountView(),
          ),
        ],
      ),
      GoRoute(
        path: AppScreens.exampleView.toPath,
        builder: (context, state) => ExampleView(),
      ),
      GoRoute(
        path: AppScreens.addPlan.toPath,
        builder: (context, state) => PlanView(),
      ),
      GoRoute(
        path: AppScreens.paywall.toPath,
        builder: (context, state) => PaywallView(),
      ),
      GoRoute(
        path: AppScreens.profile.toPath,
        builder: (context, state) => AccountView(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppScreens.plan.toPath,
        name: AppScreens.plan.name,
        builder: (context, state) {
          final idString = state.pathParameters['id']!;
          final int id = int.tryParse(idString) ?? 0;
          return PlanDetailView(id: id);
        },
      ),
    ],
    redirect: (context, state) {
      // si il n'est false et que l'url est différent de /onboarding-step-1 alors on va sur la page /onboarding-step-1
      if (!oboardingProviders.isOnboardingCompleted &&
          state.matchedLocation != AppScreens.onboarding1.toPath) {
        return AppScreens.onboarding1.toPath;
      }
      // si il est true et que l'url est /onboarding-step-1 alors on va sur la page /home
      if (oboardingProviders.isOnboardingCompleted &&
          state.matchedLocation == AppScreens.onboarding1.toPath) {
        return AppScreens.register.toPath;
      }
      return null;
    },
    refreshListenable: oboardingProviders,
  );
}
