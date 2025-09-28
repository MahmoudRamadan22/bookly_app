import 'dart:core';

import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => HomeView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text(AppStrings.noRoutesFound)),
        body: Center(child: Text(AppStrings.noRoutesFound)),
      ),
    );
  }
}
