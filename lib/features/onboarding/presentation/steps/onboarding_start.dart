import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:feeed/providers/onboarding_providers.dart';
import 'package:feeed/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:feeed/utils/shared_preferences_constants.dart'; // si tu as une constante

class OnboardingStart extends StatelessWidget {
  const OnboardingStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Onboarding step 1"),
            CtaButton(
              text: "C'est parti !",
              onPressed: () async {
                final store = context.read<OboardingProviders>();
                await store.completeOnboarding();
              },
            ),
          ],
        ),
      ),
    );
  }
}
