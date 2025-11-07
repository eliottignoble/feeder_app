import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/material.dart';

class CtaButton extends StatelessWidget {
  const CtaButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.width = double.infinity,
    this.height = 56,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor ?? CustomColors.rose,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                text,
                style: CustomTextStyles.title.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  } // ···
}
