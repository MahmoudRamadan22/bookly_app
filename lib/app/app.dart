import 'package:bookly/core/resources/routes_manager.dart';
import 'package:bookly/core/resources/theme_manager.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_models/physics_books_cubit/physics_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/programming_books_cubit/programming_books_cubit.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:bookly/services/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookly extends StatelessWidget {
  const Bookly._internal();
  static final Bookly _instance = Bookly._internal();
  factory Bookly() => _instance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ProgrammingBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchProgrammingBooks(),
        ),
        BlocProvider(
          create: (context) => PhysicsBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
        theme: getApplicationTheme(),
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
