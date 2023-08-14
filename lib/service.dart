import 'dart:developer';

import 'package:code_magic_test/model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/posts';
  final Dio _dio = Dio();

  Future<List<Editor>> fetchSummary() async {
    try {
      final response = await _dio.get(baseUrl);
      final data =
          List<Editor>.from(response.data.map((item) => Editor.fromJson(item)));
      return data;
    } catch (error) {
      log(error.toString());
      throw Exception('Failed to fetch data');
    }
  }
}
