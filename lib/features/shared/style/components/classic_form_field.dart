import 'dart:ffi';

import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassicFormField extends StatelessWidget {
  const ClassicFormField({
    super.key,
    required this.label,
    this.typePassword,
    required this.validator,
    required this.onChanged,
    required this.placeholder,
    this.width,
    this.height,
  });

  final String label;
  final String placeholder;
  final bool? typePassword;
  final String? Function(String?) validator;
  final void Function(String?) onChanged;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: width,
        height: height,
        color: CustomColors.white,
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            contentPadding: EdgeInsets.all(12.0),
            hintText: placeholder,
            hintStyle: TextStyle(color: CustomColors.greyIcon),

            label: Text.rich(
              TextSpan(
                text: label,
                style: CustomTextStyles.baseInter.copyWith(
                  color: CustomColors.grey,
                ),
                children: [
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          obscureText: typePassword ?? false,
          validator: validator,
          onSaved: onChanged,
        ),
      ),
    );
  }
}
