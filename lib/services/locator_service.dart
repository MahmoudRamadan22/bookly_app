import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(ApiService(Dio())));

  // Alternatively you could write it if you don't like global variables
}
