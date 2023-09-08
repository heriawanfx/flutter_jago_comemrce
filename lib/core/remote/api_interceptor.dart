import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_jago_commerce/core/auth/data/datasource/auth_local_datasource.dart';

class ApiInterceptor extends Interceptor {
  final AuthLocalDataSource authLocalDataSource;

  ApiInterceptor({required this.authLocalDataSource});

  Future<Map<String, dynamic>> _defaultHeader() async {
    Map<String, String> headers = {};

    final value = await authLocalDataSource.getAuthData();

    String? jwtToken = value?.jwtToken;
    if (jwtToken != null) {
      headers['Authorization'] = "Bearer $jwtToken";
    }

    return headers;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      options.headers.addAll(await _defaultHeader());

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
