import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/plan/presentation/providers/plan_detail_providers.dart';
import 'package:flutter/material.dart';

class PlanDetailView extends StatelessWidget {
  const PlanDetailView({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final store = PlanDetailProviders();
    final card = store.getCardByIndex(id);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Image.asset(card.imagePath, height: 256)),
            ],
          ),
        ],
      ),
    );
  }
}
