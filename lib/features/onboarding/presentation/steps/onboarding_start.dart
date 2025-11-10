import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/onboarding/domain/enum/data_onboarding.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/onboarding/presentation/components/onboarding_grid.dart';
import 'package:feeed/features/onboarding/presentation/components/counter.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:feeed/providers/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardingStart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnboardingStartSate();
}

class _OnboardingStartSate extends State<OnboardingStart> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    // 1️⃣ Créer les sous-listes (4 images par card)
    List<List<ImageInfoCards>> chunkedImages = [];
    for (var i = 0; i < ImageInfoCards.values.length; i += 4) {
      chunkedImages.add(
        ImageInfoCards.values.sublist(
          i,
          (i + 4).clamp(0, ImageInfoCards.values.length),
        ),
      );
    }

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
                  children: [
                    for (var i = 0; i < chunkedImages.length; i++)
                      Container(
                        height: 5,
                        width: 25,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: i == currentSlide
                              ? CustomColors.white
                              : CustomColors.greyIcon,
                        ),
                      ),
                  ],
                ),
                // appelle du pageView
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: SizedBox(
                    child: CardsOnboarding(
                      imagesChunked: chunkedImages,
                      onSlideChanged: (index) {
                        debugPrint("Slide changed: $index");
                        setState(() {
                          currentSlide = index;
                        });
                      },
                    ),
                  ),
                ),

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
              width: 261,
              text: "C'est parti !",
              onPressed: () async {
                final store = context.read<OboardingProvider>();
                await store.completeOnboarding();
              },
            ),
          ],
        ),
      ),
    );
  }
}
