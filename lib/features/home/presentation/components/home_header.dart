import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/home/presentation/components/search/search_view.dart';
import 'package:feeed/features/onboarding/domain/ImageData.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  List<String> searchResult = [];

  void onQueryChanged(List<String> results) {
    setState(() {
      searchResult = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double itemHeight = 56;
    const double maxHeight = 250;

    final double dynamicHeight = (searchResult.length * itemHeight).clamp(
      0,
      maxHeight,
    );

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 40,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
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
              padding: const EdgeInsets.all(16),
              child: SearchView(onQueryChanged: onQueryChanged),
            ),

            if (searchResult.isNotEmpty) SizedBox(height: dynamicHeight - 16),
          ],
        ),

        if (searchResult.isNotEmpty)
          Positioned(
            left: 16,
            right: 16,
            top: 180,
            child: Container(
              height: dynamicHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.builder(
                itemCount: searchResult.length,
                padding: EdgeInsets.zero,
                itemBuilder: (_, i) => ListTile(
                  title: Text(searchResult[i]),
                  onTap: () => context.pushNamed(
                    AppScreens.plan.name,
                    pathParameters: {'id': i.toString()},
                    extra: planData[i],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
