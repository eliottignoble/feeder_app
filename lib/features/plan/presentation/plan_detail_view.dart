import 'package:feeed/features/onboarding/domain/enum/data_onboarding.dart';
import 'package:feeed/features/plan/presentation/providers/plan_detail_providers.dart';
import 'package:flutter/material.dart';

class PlanDetailView extends StatelessWidget {
  const PlanDetailView({super.key, required this.plan});

  final ImageInfoCards plan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Image.asset(plan.imagePath, height: 256)),
            ],
          ),
        ],
      ),
    );
  }
}
