import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/plan/presentation/components/forms/form_plan_description.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/material.dart';

class PlanStep1AddDescription extends StatefulWidget {
  const PlanStep1AddDescription({super.key, required this.controller});

  final PageController controller;

  @override
  State<PlanStep1AddDescription> createState() =>
      _PlanStep1AddDescriptionState();
}

class _PlanStep1AddDescriptionState extends State<PlanStep1AddDescription> {
  final _planFormKey = GlobalKey<FormPlanDescriptionState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 20,
        children: [
          FormPlanDescription(key: _planFormKey),
          CtaButton(
            text: "SUIVANT",
            backgroundColor: CustomColors.bg,
            onPressed: () => {
              _planFormKey.currentState?.submit(),
              widget.controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              ),
            },
          ),
        ],
      ),
    );
  }
}
