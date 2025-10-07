import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemOfSearchBooks extends StatelessWidget {
  const ItemOfSearchBooks({
    super.key,
    required this.title,
    required this.publisher,
    required this.pages,
    required this.image,
    required this.price,
  });
  final String title;
  final String publisher;
  final int pages;
  final String image;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(AppSize.s10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * .29,
            child: CachedNetworkImage(imageUrl: image),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                publisher,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    price == 0 ? "Free" : "$price \$",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Icon(Icons.star_half_sharp, color: ColorManager.lightPrimary),
                  Text(
                    "4.5",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "($pages)",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
