import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:feeed/providers/onboarding_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:feeed/assets/typography.dart';

class OnboardingStart extends StatelessWidget {
  const OnboardingStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'PAS DE SOUS ?',
                  style: CustomTextStyles.title.copyWith(
                    color: CustomColors.white,
                    height: 0,
                  ),
                ),
                Text(
                  "Y'A PAS DESOU.",
                  style: CustomTextStyles.title.copyWith(
                    color: CustomColors.rose,
                    height: 0,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Accède aux 500 bons plans qu'on te propose chaque mois",
                  style: CustomTextStyles.baseInter.copyWith(
                    color: CustomColors.white,
                  ),
                ),
              ],
            ),
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
