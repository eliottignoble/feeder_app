import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/images.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/material.dart';

class CardsOnboarding extends StatelessWidget {
  const CardsOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // 1️⃣ Créer les sous-listes (4 images par card)
    List<List<ImageInfoCards>> chunkedImages = [];
    for (var i = 0; i < ImageInfoCards.values.length; i += 4) {
      chunkedImages.add(
        ImageInfoCards.values.sublist(
          i,
          (i + 4).clamp(0, ImageInfoCards.values.length),
        ),
      );
    }

    return CarouselView(
      backgroundColor: CustomColors.white,
      scrollDirection: Axis.horizontal,
      itemExtent: 300,
      itemSnapping: true,
      children: chunkedImages.map((sublist) {
        final index = sublist;
        print(chunkedImages.length);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    children: sublist.map((img) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7),
                                child: Image.asset(
                                  img.imagePath,
                                  fit: BoxFit.cover,
                                  width: 120,
                                  height: 60,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: CustomColors.white,
                                    width: 3,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    img.imageLogo,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Text(
                            img.title,
                            style: CustomTextStyles.cardsOnboardingTitle,
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            img.subtitle,
                            style: CustomTextStyles.cardsOnboardingsDescription,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

enum ImageInfoCards {
  image1(
    CustomImages.basicFeet,
    CustomImages.logoBasicFeet,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  image2(
    CustomImages.hotel,
    CustomImages.logoHotel,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  image3(
    CustomImages.bar,
    CustomImages.lobarBar,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  image4(
    CustomImages.tacos,
    CustomImages.logosTacos,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  image5(
    CustomImages.logoBasicFeet,
    CustomImages.basicFeet,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  image6(
    CustomImages.hotel,
    CustomImages.logoHotel,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  image7(
    CustomImages.bar,
    CustomImages.lobarBar,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  image8(
    CustomImages.tacos,
    CustomImages.logosTacos,
    'Garantie appart',
    'Pas besoin de garants',
  );

  const ImageInfoCards(
    this.imagePath,
    this.imageLogo,
    this.title,
    this.subtitle,
  );

  final String imagePath;
  final String imageLogo;
  final String title;
  final String subtitle;
}
