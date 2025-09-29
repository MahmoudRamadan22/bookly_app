import 'package:bookly/core/resources/constants_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_item_in_list_view.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height:
              MediaQuery.of(context).size.height *
              AppConstants.percentageOfHeight,
          child: AspectRatio(
            aspectRatio: AppConstants.aspectRatio,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: CustomItemInListView(),
              ),
              itemCount: 3, // wait to modify later
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}
