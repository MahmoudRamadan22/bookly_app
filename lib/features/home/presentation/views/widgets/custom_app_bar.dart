import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  AppBar getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: Text(AppStrings.appName.toUpperCase()),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // to search for books
          },
          icon: Icon(Icons.search),
        ),
      ],
    );
  }

  AppBar customAppBarForDetailsBookView() {
    return AppBar(
      actionsPadding: EdgeInsets.all(AppPadding.p10),
      leading: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_checkout_rounded),
        ),
      ],
    );
  }
}
