import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardPlan extends StatelessWidget {
  const CardPlan({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.imageLogo,
    this.id,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final String imageLogo;
  final int? id;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
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
                  imagePath,
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
                  child: Image.asset(imageLogo, width: 20, height: 20),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: CustomTextStyles.cardsOnboardingTitle,
                textAlign: TextAlign.start,
              ),
              Text(
                subtitle,
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
