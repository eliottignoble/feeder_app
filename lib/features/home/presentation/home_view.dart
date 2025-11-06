import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/home/presentation/components/category_box.dart';
import 'package:feeed/features/home/presentation/components/search/search_bar.dart';
import 'package:feeed/features/onboarding/domain/enum/data_onboarding.dart';
import 'package:feeed/features/onboarding/presentation/components/onboarding_card.dart';
import 'package:flutter/material.dart';
import 'package:feeed/assets/typography.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 40,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "COUCOU TOI,",
                          style: CustomTextStyles.title.copyWith(
                            color: CustomColors.white,
                          ),
                        ),
                        Text(
                          "T'es en manque de thunes ?",
                          style: CustomTextStyles.subtitle.copyWith(
                            color: CustomColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClassicSearchBar(placeholder: "Cherche un bon plan"),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    child: Container(
                      color: CustomColors.white,
                      width: double.maxFinite,
                      child: Container(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          spacing: 40,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CategoryBox(
                                  backgroundColor: CustomColors.bg,
                                  text: "courses",
                                  icon: Icons.shopping_bag_outlined,
                                ),
                                CategoryBox(
                                  backgroundColor: CustomColors.red,
                                  text: "sport",
                                  icon: Icons.directions_run,
                                ),
                                CategoryBox(
                                  backgroundColor: CustomColors.blue,
                                  text: "trains",
                                  icon: Icons.directions_train_rounded,
                                ),
                                CategoryBox(
                                  backgroundColor: CustomColors.rose,
                                  text: "soirées",
                                  icon: Icons.nightlife,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Les plans du moments",
                                  style: CustomTextStyles.h3,
                                ),
                                Text(
                                  "Voir tout",
                                  style: CustomTextStyles.baseInter.copyWith(
                                    color: CustomColors.red,
                                  ),
                                ),
                              ],
                            ),
                            GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: ImageInfoCards.values.map((img) {
                                return OnboardingCard(
                                  title: img.title,
                                  subtitle: img.subtitle,
                                  imagePath: img.imagePath,
                                  imageLogo: img.imageLogo,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
