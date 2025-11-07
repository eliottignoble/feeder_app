import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/material.dart';

class PlanAdd extends StatefulWidget {
  const PlanAdd({super.key});

  @override
  State<PlanAdd> createState() => _PlanAddState();
}

class _PlanAddState extends State<PlanAdd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "COUCOU TOI,",
            style: CustomTextStyles.title.copyWith(color: CustomColors.white),
          ),
          const SizedBox(height: 40), // Remplace spacing:40
          Text(
            "T'es en manque de thunes ?",
            style: CustomTextStyles.subtitle.copyWith(
              color: CustomColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
