import 'package:feeed/features/onboarding/domain/enum/data_onboarding.dart';
import 'package:feeed/features/onboarding/presentation/components/onboarding_card.dart';
import 'package:flutter/cupertino.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
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
    );
  }
}
