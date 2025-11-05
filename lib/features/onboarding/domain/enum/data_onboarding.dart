import 'package:feeed/assets/images.dart';

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
