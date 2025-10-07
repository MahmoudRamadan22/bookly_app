import 'package:bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({
    super.key,
    required this.image,
    required this.pages,
    required this.price,
    required this.publisher,
    required this.title,
  });
  final String title;
  final String publisher;
  final double price;
  final int pages;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().customAppBarForDetailsBookView(context),
      body: BookDetailsViewBody(
        image: image,
        price: price,
        pages: pages,
        title: title,
        publisher: publisher,
      ),
    );
  }
}
