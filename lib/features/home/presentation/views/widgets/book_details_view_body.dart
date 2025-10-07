import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_in_upper_part.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_of_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/price_and_full_preview_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.image,
    required this.price,
    required this.pages,
    required this.title,
    required this.publisher,
  });
  final String image;
  final double price;
  final String title;
  final int pages;
  final String publisher;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: AppPadding.p20),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.43,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(AppSize.s10),
                child: CachedNetworkImage(imageUrl: image),
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DetailsOfItem(
            pages: pages,
            price: price,
            publisher: publisher,
            title: title,
          ),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PriceAndFullPreviewItem(
              text: price == 0.0 ? "Free" : '$price \$ ',
              color: ColorManager.white,
              onTab: () {},
              style: Theme.of(context).textTheme.bodyLarge,
              bottomLeftCorner: AppSize.s10,
              bottomRightCorner: 0,
              topLeftCorner: AppSize.s10,
              topRightCorner: 0,
            ),
            PriceAndFullPreviewItem(
              text: "Free Preview",
              color: ColorManager.orange,
              onTab: () {
                // to open the book
              },
              style: Theme.of(context).textTheme.headlineSmall,
              bottomLeftCorner: 0,
              bottomRightCorner: AppSize.s10,
              topLeftCorner: 0,
              topRightCorner: AppSize.s10,
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: AppPadding.p14),
          child: Text(
            "You Can Also Like ",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(height: 15),
        ProgrammingBooks(),
      ],
    );
  }
}
