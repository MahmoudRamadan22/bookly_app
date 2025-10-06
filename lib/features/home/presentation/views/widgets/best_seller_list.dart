import 'package:bookly/core/errors/widgets/custom_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view_models/physics_books_cubit/physics_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/item_of_best_seller_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhysicsBooks extends StatelessWidget {
  const PhysicsBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhysicsBooksCubit, PhysicsBooksState>(
      builder: (context, state) {
        List<BookModel> books = [];
        if (state is PhysicsBooksSuccess) {
          books = state.books;
          return ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => ItemOfBestSellerList(
              image: books[index].volumeInfo!.imageLinks!.thumbnail,
              nPages: books[index].volumeInfo!.pageCount,
              price: books[index].saleInfo!.saleability == "NOT_FOR_SALE"
                  ? 0
                  : books[index].saleInfo!.amount.amount,
              rating: 4.5,
              title1: books[index].volumeInfo!.title,
              puplisher: books[index].volumeInfo!.publisher,
            ),
            itemCount: books.length,
            physics: NeverScrollableScrollPhysics(),
          );
        } else if (state is PhysicsBooksFailure) {
          return CustomWidget(err: state.errMsg);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
