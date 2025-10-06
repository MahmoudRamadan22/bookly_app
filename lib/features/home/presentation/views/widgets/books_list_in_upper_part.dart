import 'package:bookly/core/errors/widgets/custom_widget.dart';
import 'package:bookly/core/resources/constants_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view_models/programming_books_cubit/programming_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_in_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProgrammingBooks extends StatelessWidget {
  const ProgrammingBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgrammingBooksCubit, ProgrammingBooksState>(
      builder: (context, state) {
        List<BookModel> books = [];
        if (state is ProgrammingBooksSuccess) {
          books = state.books;
          return SizedBox(
            height:
                MediaQuery.of(context).size.height *
                AppConstants.percentageOfHeight,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: CustomItemInListView(
                  image: books[index].volumeInfo!.imageLinks!.thumbnail,
                ),
              ),
              itemCount: books.length, // wait to modify later
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is ProgrammingBooksFailure) {
          return CustomWidget(err: state.errMsg);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
