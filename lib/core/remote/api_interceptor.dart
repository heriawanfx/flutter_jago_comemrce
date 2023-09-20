import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../di/injector.dart';
import '../auth/data/datasources/auth_local_datasource.dart';
import '../auth/domain/repositories/auth_repository.dart';

class ApiInterceptor extends Interceptor {
  final AuthLocalDataSource authLocalDataSource;

  ApiInterceptor({required this.authLocalDataSource});

  Future<Map<String, dynamic>> _getTokenHeaderMap() async {
    Map<String, String> headers = {};

    final authData = await authLocalDataSource.getAuthData();

    String? jwtToken = authData?.jwtToken;
    if (jwtToken != null) {
      headers['Authorization'] = "Bearer $jwtToken";
    }

    return headers;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      if (!options.uri.path.contains('login') ||
          !options.uri.path.contains('register')) {
        options.headers.addAll(await _getTokenHeaderMap());
      }

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
      Response<dynamic> response, ResponseInterceptorHandler handler) async {
    final prettyString = jsonEncode(response.data);
    if (kDebugMode) {
      print(
        'Status Code: ${response.statusCode}\n'
        'Response : $prettyString\n',
      );
    }

    //Unaunthenticated Handler
    if ((response.statusCode ?? 0) >= 400 &&
        (response.statusCode ?? 0) <= 403) {
      Dio dio = getInstance();
      AuthRepository authRepository = getInstance();

      final isRelogin = await authRepository.reLogin();

      RequestOptions requestOptions = response.requestOptions;

      final opts = Options(method: requestOptions.method);
      opts.headers?.addAll(await _getTokenHeaderMap());

      final newResponse = await dio.request(
        requestOptions.path,
        options: opts,
        cancelToken: requestOptions.cancelToken,
        onReceiveProgress: requestOptions.onReceiveProgress,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
      );
      handler.resolve(newResponse);
    }

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Dio Error : $err, ${err.response}');
    return handler.next(err);
  }
}
