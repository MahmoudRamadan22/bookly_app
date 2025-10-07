import 'package:bookly/core/errors/widgets/custom_widget.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/item_of_search_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          List<BookModel> searchedBooks = state.books;
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            BookDetailsView(
                              image: searchedBooks[index]
                                  .volumeInfo!
                                  .imageLinks!
                                  .thumbnail,
                              pages: searchedBooks[index].volumeInfo!.pageCount,
                              price:
                                  searchedBooks[index].saleInfo!.amount.amount,
                              publisher:
                                  searchedBooks[index].volumeInfo!.publisher,
                              title: searchedBooks[index].volumeInfo!.title,
                              bookUrl:
                                  searchedBooks[index].volumeInfo!.previewLink,
                            ),
                      ),
                    );
                  },
                  child: ItemOfSearchBooks(
                    title: searchedBooks[index].volumeInfo!.title,
                    publisher: searchedBooks[index].volumeInfo!.publisher,
                    pages: searchedBooks[index].volumeInfo!.pageCount,
                    image:
                        searchedBooks[index].volumeInfo!.imageLinks!.thumbnail,
                    price: searchedBooks[index].saleInfo!.amount.amount,
                  ),
                ),
              ),
              itemCount: searchedBooks.length,
              physics: BouncingScrollPhysics(),
            ),
          );
        } else if (state is SearchFailureState) {
          return CustomWidget(err: state.errMsg);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
