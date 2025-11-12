import 'package:feeed/features/home/presentation/components/search/search_bar.dart';
import 'package:feeed/features/onboarding/domain/plan_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.onQueryChanged});

  final void Function(List<String> results) onQueryChanged;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<String> data = planData.map<String>((e) => e.title).toList();

  void onQueryChanged(String query) {
    final results = query.isEmpty
        ? <String>[]
        : data
              .where((item) => item.toLowerCase().contains(query.toLowerCase()))
              .toList();
    widget.onQueryChanged(results);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [ClassicSearchBar(onQueryChanged: onQueryChanged)]);
  }
}
