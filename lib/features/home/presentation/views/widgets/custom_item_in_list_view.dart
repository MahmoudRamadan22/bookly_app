import 'package:bookly/core/resources/assets_manager.dart';
import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/constants_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomItemInListView extends StatelessWidget {
  const CustomItemInListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: AppConstants.aspectRatio,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s10),
            color: ColorManager.black,
            image: DecorationImage(
              image: AssetImage(ImageAssets.book1),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
