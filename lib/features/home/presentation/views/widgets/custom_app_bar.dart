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

  AppBar customAppBarForDetailsBookView(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsets.all(AppPadding.p10),
      leading: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
        child: IconButton(
          onPressed: () {
            // to return  to home view
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // to check your cart
          },
          icon: Icon(Icons.shopping_cart_checkout_rounded),
        ),
      ],
    );
  }
}
