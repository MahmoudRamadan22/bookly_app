import 'package:bookly/core/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) =>
    TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: FontsConstant.fontFamily,
    );
//bold textStyle
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontsWeightManager.bold, color);
}

// semi bold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsWeightManager.semiBold, color);
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsWeightManager.regular, color);
}

// medium style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsWeightManager.medium, color);
}

// light style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(fontSize, FontsWeightManager.light, color);
}
