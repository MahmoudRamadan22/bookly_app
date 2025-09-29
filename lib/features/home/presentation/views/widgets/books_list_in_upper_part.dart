import 'package:bookly/core/resources/constants_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_in_list_view.dart';
import 'package:flutter/material.dart';

class BooksListInUpperPart extends StatelessWidget {
  const BooksListInUpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height * AppConstants.percentageOfHeight,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: CustomItemInListView(),
        ),
        itemCount: 3, // wait to modify later
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
