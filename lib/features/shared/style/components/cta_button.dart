import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/material.dart';

class CtaButton extends StatelessWidget {
  const CtaButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(261, 56),
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
        ],
      ),
    );
  } // ···
}
