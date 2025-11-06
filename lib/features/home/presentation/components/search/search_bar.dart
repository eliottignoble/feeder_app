import 'package:feeed/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassicSearchBar extends StatefulWidget {
  const ClassicSearchBar({super.key, required this.onQueryChanged});

  final void Function(String) onQueryChanged;

  @override
  State<ClassicSearchBar> createState() => _ClassicSearchBarState();
}

class _ClassicSearchBarState extends State<ClassicSearchBar> {
  // ce qu'on marque dans l'input
  String query = '';

  // envoie ce que l'on a taper dans l'input au parent
  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(query);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: CustomColors.white,
        child: TextFormField(
          onChanged: widget.onQueryChanged,
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
