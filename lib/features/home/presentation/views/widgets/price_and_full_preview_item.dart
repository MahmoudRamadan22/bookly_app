import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class PriceAndFullPreviewItem extends StatelessWidget {
  const PriceAndFullPreviewItem({
    super.key,
    required this.text,
    required this.color,
    required this.onTab,
    this.style,
    required this.bottomLeftCorner,
    required this.bottomRightCorner,
    required this.topLeftCorner,
    required this.topRightCorner,
  });
  final String text;
  final Color color;
  final VoidCallback onTab;
  final TextStyle? style;
  final double bottomRightCorner;
  final double bottomLeftCorner;
  final double topRightCorner;
  final double topLeftCorner;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStatePropertyAll(color),
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.all(AppPadding.p10),
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftCorner),
            topRight: Radius.circular(topRightCorner),
            bottomLeft: Radius.circular(bottomLeftCorner),
            bottomRight: Radius.circular(bottomRightCorner),
          ),
        ),
        child: Center(
          child: Text(text, style: style, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
