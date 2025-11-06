import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/cupertino.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.imageLogo,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final String imageLogo;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: 120,
                height: 60,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: CustomColors.white, width: 3),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imageLogo, width: 20, height: 20),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomTextStyles.cardsOnboardingTitle,
              textAlign: TextAlign.start,
            ),
            Text(
              subtitle,
              style: CustomTextStyles.cardsOnboardingsDescription,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ],
    );
  }
}
