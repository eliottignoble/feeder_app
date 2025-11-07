import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/home/presentation/components/home_grid.dart';
import 'package:feeed/features/home/presentation/components/home_category.dart';
import 'package:feeed/features/home/presentation/components/home_header.dart';
import 'package:flutter/material.dart';
import 'package:feeed/assets/typography.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> searchResult = [];

  void onQueryChanged(List<String> results) {
    setState(() {
      searchResult = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(searchResult);
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
                  HomeHeader(
                    onQueryChanged: onQueryChanged,
                    searchResult: searchResult,
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
                            //home category
                            HomeCategory(),
                            // text"
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
                            // grid de cards
                            HomeGrid(),
                          ],
                        ),
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
