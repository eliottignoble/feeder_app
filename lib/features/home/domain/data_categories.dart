import 'package:feeed/assets/colors.dart';
import 'package:flutter/material.dart';

class Category {
  final String text;
  final IconData icon;
  final Color backgroundColor;

  const Category({
    required this.text,
    required this.icon,
    required this.backgroundColor,
  });
}

const List<Category> categories = [
  Category(
    text: 'courses',
    icon: Icons.shopping_bag_outlined,
    backgroundColor: CustomColors.bg,
  ),
  Category(
    text: 'sport',
    icon: Icons.directions_run,
    backgroundColor: CustomColors.red,
  ),
  Category(
    text: 'trains',
    icon: Icons.directions_train_rounded,
    backgroundColor: CustomColors.blue,
  ),
  Category(
    text: 'soirées',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
  Category(
    text: 'Jeux',
    icon: Icons.nightlife,
    backgroundColor: CustomColors.rose,
  ),
];
