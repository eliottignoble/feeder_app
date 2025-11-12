import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/onboarding/domain/plan_data.dart';
import 'package:feeed/features/shared/style/components/card_plan.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class HomePlan extends StatelessWidget {
  const HomePlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Les plans du moments", style: CustomTextStyles.h3),
              Text(
                "Voir tout",
                style: CustomTextStyles.baseInter.copyWith(
                  color: CustomColors.red,
                ),
              ),
            ],
          ),
          // grid de cards
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: planData.asMap().entries.map((entry) {
              final index = entry.key;
              final planValue = entry.value;
              return CardPlan(
                plan: planData[index],
                onTap: () {
                  context.pushNamed(
                    AppScreens.plan.name,
                    pathParameters: {'id': index.toString()},
                    extra: planData[index],
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
