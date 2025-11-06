import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.text,
  });

  final Color backgroundColor;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SizedBox(
          width: 57,
          height: 57,
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 24, color: CustomColors.white),
          ),
        ),
        Text(
          text,
          style: CustomTextStyles.textCategory.copyWith(color: backgroundColor),
        ),
      ],
    );
  }
}
