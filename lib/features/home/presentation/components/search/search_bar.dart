import 'package:feeed/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassicSearchBar extends StatefulWidget {
  const ClassicSearchBar({super.key});

  @override
  State<ClassicSearchBar> createState() => _ClassicSearchBarState();
}

class _ClassicSearchBarState extends State<ClassicSearchBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CustomColors.white,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Cherche un bon plan",
            hintStyle: TextStyle(color: CustomColors.grey),
            prefixIcon: Icon(Icons.search, color: CustomColors.grey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ),
    );
  }
}
