import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/search/presentation/views/widgets/item_of_search_books.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: ItemOfSearchBooks(),
        ),
        itemCount: 20,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
