import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout With Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout With Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieved timeout With Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate With Api Server');

      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
        return ServerFailure('Bad Response With Api Server');

      case DioExceptionType.cancel:
        return ServerFailure('Cancelled Api Server');

      case DioExceptionType.connectionError:
        return ServerFailure('connectionError With Api Server');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure('Unexpected Error , Please try again');
      default:
        return ServerFailure('Opps There Was a problem, Please try again');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 400) {
      return ServerFailure('Your Request Not Found, Please try again Later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error');
    } else {
      return ServerFailure('Opps There Was a problem, Please try again');
    }
  }
}
