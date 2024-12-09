import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  Dio dio = Dio();

  Future<dynamic> get({required String url}) async {
    Response response = await dio.get(url);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception("There is an Error , Code: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> post({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    try {
      // Configure headers specific to this request
      final headers = <String, dynamic>{};
      if (token != null) {
        headers["Authorization"] = "Bearer $token";
      }

      Response response = await dio.post(
        url,
        data: body,
        options: Options(headers: headers),
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      // Log or handle the error as needed
      throw Exception("Failed to post data: $e");
    }
  }

  Future<Map<String, dynamic>> put({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    try {
      // Configure headers specific to this request
      final headers = <String, dynamic>{};
      // headers.addAll({"Content-Type": "multipart/form-data"});
      if (token != null) {
        headers.addAll({"Authorization": "Bearer $token"});
      }

      Response response = await dio.post(
        url,
        data: body,
        options: Options(headers: headers),
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      // Log or handle the error as needed
      throw Exception("Failed to post data: $e");
    }
  }
}
