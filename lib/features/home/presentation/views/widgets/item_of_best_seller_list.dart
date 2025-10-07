import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/constants_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemOfBestSellerList extends StatelessWidget {
  const ItemOfBestSellerList({
    super.key,
    required this.image,
    required this.nPages,
    required this.price,
    required this.rating,
    required this.title1,
    required this.puplisher,
    required this.bookUrl,
  });
  final String image;
  final String title1;
  final String puplisher;
  final double price;
  final int nPages;
  final double rating;
  final String bookUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  BookDetailsView(
                    image: image,
                    pages: nPages,
                    price: price,
                    publisher: puplisher,
                    title: title1,
                    bookUrl: bookUrl,
                  ),
            ),
          );
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .18,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: AppConstants.aspectRatio,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(width: AppSize.s20),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      title1,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      puplisher,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: AppPadding.p8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price == 0 ? "Free" : "$price Egp",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Icon(
                            Icons.star_half_sharp,
                            color: ColorManager.lightPrimary,
                          ),
                          Text(
                            "$rating",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            '($nPages)',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
