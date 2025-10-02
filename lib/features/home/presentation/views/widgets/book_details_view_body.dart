import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_in_upper_part.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_of_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/price_and_full_preview_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                child: Image.asset(ImageAssets.book1, fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        SizedBox(height: 25),
        DetailsOfItem(),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PriceAndFullPreviewItem(
              text: '19.99 \$ ',
              color: ColorManager.white,
              onTab: () {},
              style: Theme.of(context).textTheme.bodyLarge,
              bottomLeftCorner: AppSize.s10,
              bottomRightCorner: 0,
              topLeftCorner: AppSize.s10,
              topRightCorner: 0,
            ),
            PriceAndFullPreviewItem(
              text: "Full Preview",
              color: ColorManager.orange,
              onTab: () {},
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
        BooksListInUpperPart(),
      ],
    );
  }
}
