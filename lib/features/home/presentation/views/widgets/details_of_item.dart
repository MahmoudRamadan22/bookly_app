import 'package:bookly/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class DetailsOfItem extends StatelessWidget {
  const DetailsOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "19.99 \$",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Icon(Icons.star_half_sharp, color: ColorManager.lightPrimary),
              Text("4.8", style: Theme.of(context).textTheme.headlineMedium),
              Text("(2390)", style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
