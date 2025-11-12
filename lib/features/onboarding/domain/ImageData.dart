import 'package:feeed/assets/images.dart';

class Plan {
  const Plan(
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

final List<Plan> planData = [
  Plan(
    1,
    CustomImages.basicFeet,
    CustomImages.logoBasicFeet,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  Plan(
    2,
    CustomImages.hotel,
    CustomImages.logoHotel,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  Plan(
    3,
    CustomImages.bar,
    CustomImages.lobarBar,
    'Le grand barathon',
    '2 mois offerts ',
  ),
  Plan(
    4,
    CustomImages.tacos,
    CustomImages.logosTacos,
    'Giga MAXI Tacos',
    'Pas besoin de garants',
  ),
  Plan(
    5,
    CustomImages.basicFeet,
    CustomImages.logoBasicFeet,
    'Abonnement 1 an',
    '2 mois offerts ',
  ),
  Plan(
    6,
    CustomImages.hotel,
    CustomImages.logoHotel,
    'Garantie appart',
    'Pas besoin de garants',
  ),
  Plan(
    7,
    CustomImages.bar,
    CustomImages.lobarBar,
    'Le grand barathon',
    '2 mois offerts ',
  ),
  Plan(
    8,
    CustomImages.tacos,
    CustomImages.logosTacos,
    'Giga MAXI Tacos',
    'Pas besoin de garants',
  ),
];
