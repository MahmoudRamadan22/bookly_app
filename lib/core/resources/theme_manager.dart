import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/fonts_manager.dart';
import 'package:bookly/core/resources/styles_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.lightPrimary,
    scaffoldBackgroundColor: ColorManager.primary,
    //card theme
    cardTheme: CardThemeData(
      elevation: AppSize.s8,
      shadowColor: ColorManager.grey,
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: AppSize.s16,
      ),
    ),
    //button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.white,
      splashColor: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey,
    ),
    // text theme
    textTheme: TextTheme(
      displayLarge: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s22 * 1.5,
      ),
      headlineLarge: getRegularStyle(
        color: ColorManager.white,
        fontSize: AppSize.s14,
      ),
      headlineSmall: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s22 * 1.3,
      ),
      titleLarge: getRegularStyle(
        color: ColorManager.white,
        fontSize: AppSize.s14,
      ),
      bodySmall: getLightStyle(
        color: ColorManager.white,
        fontSize: AppSize.s12,
      ),
    ),
  );
}
