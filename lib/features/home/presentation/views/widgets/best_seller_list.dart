import 'package:bookly/features/home/presentation/views/widgets/item_of_best_seller_list.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => ItemOfBestSellerList(),
        itemCount: 3,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
