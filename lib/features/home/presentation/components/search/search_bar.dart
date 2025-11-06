import 'package:feeed/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassicSearchBar extends StatelessWidget {
  const ClassicSearchBar({
    super.key,
    required this.placeholder,
    this.onChanged,
  });

  final String placeholder;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CustomColors.white,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: TextStyle(color: CustomColors.grey),
            prefixIcon: Icon(Icons.search, color: CustomColors.grey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(12),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
