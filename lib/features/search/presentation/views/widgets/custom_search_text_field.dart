import 'package:bookly/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: Icon(Icons.search, color: ColorManager.orange),
      ),
      style: Theme.of(context).textTheme.titleLarge,
      onSubmitted: (value) {
        // go to search results
        Navigator.pop(context);
      },
    );
  }
}
