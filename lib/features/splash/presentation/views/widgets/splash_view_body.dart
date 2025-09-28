import 'dart:async';

import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/fonts_manager.dart';
import 'package:bookly/core/resources/routes_manager.dart';
import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Timer? _timer;
  void delay() {
    _timer = Timer(Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  @override
  void initState() {
    delay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppStrings.appName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            TweenAnimationBuilder(
              tween: ColorTween(
                begin: ColorManager.white,
                end: ColorManager.primary,
              ),
              duration: Duration(seconds: 2),
              builder: (BuildContext context, Color? value, Widget? child) {
                return Text(
                  AppStrings.readFreeBooks,
                  textAlign: TextAlign.center,
                  style: getBoldStyle(color: value!, fontSize: FontSize.s22),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
