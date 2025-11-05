import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/onboarding/presentation/components/cards-onboarding.dart';
import 'package:feeed/features/onboarding/presentation/components/counter.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:feeed/providers/onboarding_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingStart extends StatelessWidget {
  const OnboardingStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // --- Titre principal ---
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

            //  partie centrale
            Column(
              spacing: 24,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 6,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.grey,
                      ),
                      height: 5,
                      width: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.grey,
                      ),
                      height: 5,
                      width: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColors.grey,
                      ),
                      height: 5,
                      width: 25,
                    ),
                  ],
                ),
                // appelle du caroussel
                Container(height: 300, width: 300, child: CardsOnboarding()),
                //counter
                Counter(),
                // text
                Text(
                  "Accède aux 500 bons plans qu'on te propose chaque mois",
                  style: CustomTextStyles.baseInter.copyWith(
                    color: CustomColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // --- Bouton d'action ---
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
