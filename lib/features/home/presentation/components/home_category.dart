import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/home/presentation/components/category_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryBox(
          backgroundColor: CustomColors.bg,
          text: "courses",
          icon: Icons.shopping_bag_outlined,
        ),
        CategoryBox(
          backgroundColor: CustomColors.red,
          text: "sport",
          icon: Icons.directions_run,
        ),
        CategoryBox(
          backgroundColor: CustomColors.blue,
          text: "trains",
          icon: Icons.directions_train_rounded,
        ),
        CategoryBox(
          backgroundColor: CustomColors.rose,
          text: "soirées",
          icon: Icons.nightlife,
        ),
      ],
    );
  }
}
