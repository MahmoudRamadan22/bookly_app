import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/constants_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class ItemOfBestSellerList extends StatelessWidget {
  const ItemOfBestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: AspectRatio(
              aspectRatio: AppConstants.aspectRatio,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s10),
                  image: DecorationImage(
                    image: AssetImage(ImageAssets.book1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.s20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  "يومية",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  " يومية",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "19.99 \$",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Icon(
                      Icons.star_half_sharp,
                      color: ColorManager.lightPrimary,
                    ),
                    Text(
                      "4.8",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      "(2390)",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
