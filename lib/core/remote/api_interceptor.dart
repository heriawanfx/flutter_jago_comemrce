import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiInterceptor extends Interceptor {
  final SharedPreferences sharedPreferences;

  ApiInterceptor({required this.sharedPreferences});

  Map<String, dynamic> _defaultHeader() {
    String? authorizationToken = sharedPreferences.getString('jwt-token') ?? "";
    Map<String, String> headers = {};
    if (authorizationToken.isNotEmpty) {
      headers['Authorization'] = "Bearer $authorizationToken";
    }
    return headers;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    try {
      options.headers.addAll(_defaultHeader());

      final requestBody =
          const JsonEncoder.withIndent('  ').convert(options.data);
      final queryParameters =
          const JsonEncoder.withIndent('  ').convert(options.queryParameters);
      if (kDebugMode) {
        print(
          'Request URL : ${options.uri}\n'
          'Header: ${options.headers}\n'
          'Request Body: $requestBody\n'
          'Request Query Parameters: $queryParameters\n'
          'Method: ${options.method}\n',
        );
      }
      return handler.next(options);
    } catch (e) {
      final queryParameters =
          const JsonEncoder.withIndent('  ').convert(options.queryParameters);
      if (kDebugMode) {
        print(
          'Request URL : ${options.uri}\n'
          'Header: ${options.headers}\n'
          'Request Body: cannot read request body\n'
          'Request Query Parameters: $queryParameters\n'
          'Method: ${options.method}\n',
        );
      }
      return handler.next(options);
    }
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    final prettyString = jsonEncode(response.data);
    if (kDebugMode) {
      print(
        'Status Code: ${response.statusCode}\n'
        'Response : $prettyString\n',
      );
    }
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Dio Error : $err, ${err.response}');
    return handler.next(err);
  }
}
