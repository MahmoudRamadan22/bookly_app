import 'package:bookly/core/resources/routes_manager.dart';
import 'package:bookly/core/resources/theme_manager.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

class Bookly extends StatelessWidget {
  const Bookly._internal();
  static final Bookly _instance = Bookly._internal();
  factory Bookly() => _instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
