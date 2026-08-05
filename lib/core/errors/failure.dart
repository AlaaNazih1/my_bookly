import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure( this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
   switch (dioError.type) {
     
     case DioExceptionType.connectionTimeout:
      return ServerFailure("Connection Timeout with ApiServer");
     case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with ApiServer");
     case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with ApiServer");
     case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with ApiServer");
     case DioExceptionType.badResponse:
        return ServerFailure.fromresponse(
          dioError.response?.statusCode, dioError.response?.data);
     case DioExceptionType.cancel:
       return ServerFailure("Request to ApiServer was cancelled");
     case DioExceptionType.connectionError:
       return ServerFailure("Connection Error with ApiServer");
     case DioExceptionType.unknown:
        if (dioError.message?.contains("SocketException") ?? false) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Opps there was an error, Please try later!");
     case DioExceptionType.transformTimeout:
       return ServerFailure("Transform Timeout with ApiServer");
     }
  }
  factory ServerFailure.fromresponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server error, Please try later!");
    } else {
      return ServerFailure("Opps there was an error, Please try later!");
    }
  }
  
}
