import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/services/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestNewestBooks() async {
    try {
      var result = await apiService.get(endPoint: 'volumes?q=programming');
      List<Map<String, dynamic>> data = result['items'];
      List<BookModel> books = [];
      for (var book in data) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure('there is an error : ${e.toString()}'));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchPhysicsBooks() async {
    try {
      var result = await apiService.get(endPoint: 'volumes?q=physics');
      List<Map<String, dynamic>> data = result['items'];
      List<BookModel> books = [];
      for (var book in data) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure('there is an error : ${e.toString()}'));
      }
    }
  }
}
