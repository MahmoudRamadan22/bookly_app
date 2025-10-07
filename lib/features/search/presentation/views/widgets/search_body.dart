import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: Column(
          children: [
            CustomSearchTextField(
              onChanged: (value) {
                if (value == 'programming' || value == 'programming ') {
                  BlocProvider.of<SearchCubit>(context).fetchSimilarBooks();
                }
              },
              onSubmitted: (value) {
                if (value == 'programming' || value == 'programming ') {
                  BlocProvider.of<SearchCubit>(context).fetchSimilarBooks();
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              "Search Results ...",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20),
            SearchResultListView(),
          ],
        ),
      ),
    );
  }
}
