import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/onboarding/domain/plan_data.dart';
import 'package:flutter/material.dart';

class PlanDetailHeader extends StatelessWidget {
  const PlanDetailHeader({super.key, required this.plan});

  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(plan.imagePath, height: 256, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.0),
                    Color.fromRGBO(0, 0, 0, 0.83),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plan.title,
                    style: CustomTextStyles.h3.copyWith(
                      color: CustomColors.white,
                    ),
                  ),
                  Text(
                    plan.subtitle,
                    style: CustomTextStyles.link.copyWith(
                      color: CustomColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
