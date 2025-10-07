import 'package:bookly/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class DetailsOfItem extends StatelessWidget {
  const DetailsOfItem({
    super.key,
    required this.pages,
    required this.price,
    required this.publisher,
    required this.title,
  });
  final String title;
  final String publisher;
  final double price;
  final int pages;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                price == 0.0 ? 'Free' : '$price \$ ',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Icon(Icons.star_half_sharp, color: ColorManager.lightPrimary),
              Text("4.5", style: Theme.of(context).textTheme.headlineMedium),
              Text("($pages)", style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
