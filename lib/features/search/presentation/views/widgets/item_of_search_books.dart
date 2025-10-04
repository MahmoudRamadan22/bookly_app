import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class ItemOfSearchBooks extends StatelessWidget {
  const ItemOfSearchBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(AppSize.s10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: Image.asset(ImageAssets.book1, fit: BoxFit.fill),
          ),
        ),
        SizedBox(width: 15),
        Column(
          children: [
            Column(
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
          ],
        ),
      ],
    );
  }
}
