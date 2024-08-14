import 'dart:developer';

import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
  Future<Map<String,dynamic>> get({required String url}) async {
    Response response = await dio.get(url);
    log('response code ${response.statusCode.toString()}');
    if (response.statusCode == 200) {
      return response.data as Map<String,dynamic>;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}\n');
    }
  }
}
