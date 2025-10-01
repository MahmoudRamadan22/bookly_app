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
      // actionsPadding: EdgeInsets.only(
      //   left: AppPadding.p12,
      //   top: AppPadding.p12,
      //   right: AppPadding.p16,
      //   bottom: AppPadding.p12,
      // ),
      backgroundColor: ColorManager.primary,
      centerTitle: false,
      titleTextStyle: getBoldStyle(
        color: ColorManager.white,
        fontSize: AppSize.s20,
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
        fontSize: AppSize.s24,
      ),
      headlineSmall: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s22 * 1.3,
      ),
      headlineMedium: getBoldStyle(
        color: ColorManager.white,
        fontSize: FontSize.s22,
      ),
      titleLarge: getRegularStyle(
        color: ColorManager.white,
        fontSize: AppSize.s14,
      ),
      bodySmall: getLightStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.s22,
      ),
    ),
    // icon button theme
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.only(
            top: AppPadding.p16,
            left: AppPadding.p16,
            bottom: AppPadding.p16,
            right: AppPadding.p20,
          ),
        ),
        overlayColor: WidgetStatePropertyAll(ColorManager.lightPrimary),
        iconColor: WidgetStatePropertyAll(ColorManager.white),
        iconSize: WidgetStatePropertyAll(AppSize.s32),
      ),
    ),
  );
}
