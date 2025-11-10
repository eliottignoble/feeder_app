import 'package:feeed/assets/images.dart';

enum ImageInfoCards {
  image1(
    1,
    CustomImages.basicFeet,
    CustomImages.logoBasicFeet,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  image2(
    2,
    CustomImages.hotel,
    CustomImages.logoHotel,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  image3(
    3,
    CustomImages.bar,
    CustomImages.lobarBar,
    'Le grand barathon',
    '2 mois offerts ',
  ),
  image4(
    4,
    CustomImages.tacos,
    CustomImages.logosTacos,
    'Giga MAXI Tacos',
    'Pas besoin de garants',
  ),
  image5(
    5,
    CustomImages.basicFeet,
    CustomImages.logoBasicFeet,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  image6(
    6,
    CustomImages.hotel,
    CustomImages.logoHotel,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  image7(
    7,
    CustomImages.bar,
    CustomImages.lobarBar,
    'Le grand barathon',
    '2 mois offerts ',
  ),
  image8(
    8,
    CustomImages.tacos,
    CustomImages.logosTacos,
    'Giga MAXI Tacos',
    'Pas besoin de garants',
  );

  const ImageInfoCards(
    this.id,
    this.imagePath,
    this.imageLogo,
    this.title,
    this.subtitle,
  );

  final int id;
  final String imagePath;
  final String imageLogo;
  final String title;
  final String subtitle;
}
