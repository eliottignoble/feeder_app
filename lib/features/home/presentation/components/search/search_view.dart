import 'package:feeed/features/home/presentation/components/search/search_bar.dart';
import 'package:feeed/features/onboarding/domain/enum/data_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<String> data = ImageInfoCards.values.map((e) => e.title).toList();
  List<String> searchResult = [];

  // cherche query tapé dans l'input avec ma liste de titre
  void onQueryChanged(String query) {
    setState(() {
      searchResult = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    print(searchResult);
    return Column(children: [ClassicSearchBar(onQueryChanged: onQueryChanged)]);
  }
}
