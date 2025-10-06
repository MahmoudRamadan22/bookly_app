import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.err});
  final String err;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(err, style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
