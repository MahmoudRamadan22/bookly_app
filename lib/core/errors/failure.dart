import 'package:dio/dio.dart';

abstract class Failure {
  final String err;
  Failure(this.err);
}

class ServerFailure extends Failure {
  ServerFailure(super.err);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection timeout with api server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send timeout with api server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("recieve timeout with api server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure("the request is cancelled");
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketExceptions')) {
          return ServerFailure("there is no network");
        } else {
          return ServerFailure("xhr.onError");
        }
      case DioExceptionType.unknown:
        return ServerFailure("unknown error");
      default:
        return ServerFailure("opps there is an error , pls try later ");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("your request not found , pls try later ");
    } else if (statusCode == 500) {
      return ServerFailure("internal server error , pls try later ");
    } else {
      return ServerFailure("opps there is an error , pls try later ");
    }
  }
}
