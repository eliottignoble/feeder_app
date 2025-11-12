import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/images.dart';
import 'package:feeed/features/plan/presentation/components/commentary_card_plan.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    void showBottomSheet() {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        backgroundColor: CustomColors.bg,
        builder: (context) {
          return Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(children: [Text("Classic bottomsheet")]),
          );
        },
      );
    }

    void showBottomSheetFullScreen() {
      showModalBottomSheet(
        useRootNavigator: true,
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        backgroundColor: CustomColors.bg,
        builder: (context) {
          return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("bottomsheet fullScreen")],
            ),
          );
        },
      );
    }

    void showBottomSheetWithScrollView() {
      showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        backgroundColor: CustomColors.bg,
        builder: (context) {
          return Container(
            height: 500,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 20,
                  children: [
                    Text("bottomsheet with scrollView"),
                    ...List.generate(
                      6,
                      (index) => CommentaryCardPlan(
                        name: "Eliott",
                        image: CustomImages.killian,
                        text:
                            "debzid yefvefyvde  vzusezyubd evzdfej zvdeid zbcezbc cegzdgezyvdyezdzed z dgezgdiezdez  dhezdh dhehue hdhdh",
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    void showBottomSheetWithCross() {
      showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: false,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        backgroundColor: CustomColors.bg,
        builder: (context) {
          return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 42),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(Icons.clear_outlined),
                    ),
                  ],
                ),
                Expanded(child: Text("bottomsheet with cross")),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CtaButton(
              text: "bottomsheet classic",
              onPressed: () => showBottomSheet(),
            ),
            CtaButton(
              text: "bottomsheet fullScreen",
              onPressed: () => showBottomSheetFullScreen(),
            ),
            CtaButton(
              text: "bottomsheet with scrollView",
              onPressed: () => showBottomSheetWithScrollView(),
            ),
            CtaButton(
              text: "bottomsheet with cross",
              onPressed: () => showBottomSheetWithCross(),
            ),
          ],
        ),
      ),
    );
  }
}
