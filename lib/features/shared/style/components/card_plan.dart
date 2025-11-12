import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/onboarding/domain/ImageData.dart';
import 'package:flutter/material.dart';

class CardPlan extends StatelessWidget {
  const CardPlan({super.key, required this.plan, this.onTap});

  final Plan plan;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // added Inkwell with callBack
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  plan.imagePath,
                  fit: BoxFit.cover,
                  width: 120,
                  height: 60,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: CustomColors.white, width: 3),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(plan.imageLogo, width: 20, height: 20),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                plan.title,
                style: CustomTextStyles.cardsOnboardingTitle,
                textAlign: TextAlign.start,
              ),
              Text(
                plan.title,
                style: CustomTextStyles.cardsOnboardingsDescription,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
