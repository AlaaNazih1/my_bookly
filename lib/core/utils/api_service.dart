import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final String baseUrl="https://www.googleapis.com/books/v1/";
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String url}) async {
    final apikey = dotenv.env['BOOKS_API_KEY'];
    var response = await _dio.get("$baseUrl$url&key=$apikey");
    return response.data;
  }
}