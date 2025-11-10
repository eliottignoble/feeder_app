import 'package:feeed/features/home/domain/data_categories.dart';
import 'package:feeed/features/home/presentation/components/category_box.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

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
            children: [
              const SizedBox(width: 32),
              Row(
                children: categories.map((category) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: CategoryBox(
                      backgroundColor: category.backgroundColor,
                      text: category.text,
                      icon: category.icon,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(width: 32),
            ],
          ),
        ),
      ),
    );
  }
}
