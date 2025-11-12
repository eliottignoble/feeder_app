import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/home/presentation/components/home_plan.dart';
import 'package:feeed/features/home/presentation/components/home_categories.dart';
import 'package:feeed/features/home/presentation/components/home_header.dart';
import 'package:flutter/material.dart';
import 'package:feeed/assets/typography.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: ScrollConfiguration.of(
              context,
            ).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeHeader(),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    child: Container(
                      color: CustomColors.white,
                      width: double.maxFinite,
                      child: Column(
                        spacing: 40,
                        children: [
                          //home category
                          HomeCategories(),
                          // grid de cards
                          HomePlan(),
                        ],
                      ),
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
