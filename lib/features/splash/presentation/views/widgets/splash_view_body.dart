import 'dart:async';

import 'package:bookly/core/resources/color_manager.dart';
import 'package:bookly/core/resources/fonts_manager.dart';
import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/styles_manager.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _controller;
  late Animation<Offset> _slidingAnimation;
  void delay() {
    _timer = Timer(Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    // Navigator.pushReplacementNamed(context, Routes.homeRoute);
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HomeView(),
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0); // يبدأ من يمين الشاشة
          const end = Offset.zero; // ينتهي في مكانه الطبيعي
          const curve = Curves.easeInOut;
          final tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);
          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }

  void animatedText() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _slidingAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _controller.forward();
  }

  @override
  void initState() {
    delay();
    animatedText();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
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
                return SlideTransition(
                  position: _slidingAnimation,
                  child: Text(
                    AppStrings.readFreeBooks,
                    textAlign: TextAlign.center,
                    style: getBoldStyle(color: value!, fontSize: FontSize.s22),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
