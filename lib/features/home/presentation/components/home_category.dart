import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/home/presentation/components/category_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: SizedBox(
        height: 100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          child: Row(
            spacing: 10,
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
              CategoryBox(
                backgroundColor: CustomColors.rose,
                text: "Jeux",
                icon: Icons.nightlife,
              ),
              CategoryBox(
                backgroundColor: CustomColors.rose,
                text: "Jeux",
                icon: Icons.nightlife,
              ),
              CategoryBox(
                backgroundColor: CustomColors.rose,
                text: "Jeux",
                icon: Icons.nightlife,
              ),
              CategoryBox(
                backgroundColor: CustomColors.rose,
                text: "Jeux",
                icon: Icons.nightlife,
              ),
              CategoryBox(
                backgroundColor: CustomColors.rose,
                text: "Jeux",
                icon: Icons.nightlife,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
