import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/home/presentation/components/search/search_view.dart';
import 'package:flutter/cupertino.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Padding(padding: const EdgeInsets.all(16.0), child: SearchView()),
      ],
    );
  }
}
