import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:bookly/services/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<ServerFailure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var result = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category',
      );
      List<dynamic> data = result['items'] as dynamic;
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
