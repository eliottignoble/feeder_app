import 'package:feeed/features/home/presentation/components/search/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ClassicSearchBar(placeholder: "Cherche un bon plan")],
    );
  }
}
