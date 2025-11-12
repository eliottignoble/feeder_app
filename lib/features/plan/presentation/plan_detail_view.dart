import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/images.dart';
import 'package:feeed/features/onboarding/domain/ImageData.dart';
import 'package:feeed/features/plan/presentation/components/commentary_card_plan.dart';
import 'package:feeed/features/plan/presentation/components/plan_detail_header.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/material.dart';

class PlanDetailView extends StatelessWidget {
  const PlanDetailView({super.key, required this.plan});

  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.greyIconContainer,
      body: Column(
        children: [
          PlanDetailHeader(plan: plan),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                spacing: 20,
                children: [
                  ...List.generate(
                    1,
                    (index) => CommentaryCardPlan(
                      name: "Killian74",
                      image: CustomImages.killian,
                      text:
                          "Chaque année, O’Tacos veut vous mettre bien. On sait que t’es étudiant et que c’est la galère, alors on t’a prévu des giga MAXI TACOS à des giga BAS PRIX. Ca se passe maintenant !",
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bouton collé en bas
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: CtaButton(
              text: "Profiter de l’offre",
              onPressed: () => {},
              backgroundColor: CustomColors.bg,
            ),
          ),
        ],
      ),
    );
  }
}
