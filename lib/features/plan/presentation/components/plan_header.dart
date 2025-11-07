import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/material.dart';

class PlanHeader extends StatelessWidget {
  const PlanHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ajouter ",
            style: CustomTextStyles.title.copyWith(color: CustomColors.white),
          ),
          Text(
            "Un bon plan pour en faire profiter les autres",
            style: CustomTextStyles.subtitle.copyWith(
              color: CustomColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
