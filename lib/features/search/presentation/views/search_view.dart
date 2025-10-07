import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_body.dart';
import 'package:bookly/services/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
        child: SearchBody(),
      ),
    );
  }
}
