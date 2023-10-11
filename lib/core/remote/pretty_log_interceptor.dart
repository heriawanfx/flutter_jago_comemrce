import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

typedef HttpLoggerFilter = bool Function();

const _prefix = 'dio_http_formatter';
const _startTimeKey = '$_prefix@start_time';

class PrettyLogInterceptor extends Interceptor {
  // Logger object to pretty print the HTTP Request
  final Logger _logger;
  final bool _includeRequest,
      _includeRequestHeaders,
      _includeRequestQueryParams,
      _includeRequestBody,
      _includeResponse,
      _includeResponseHeaders,
      _includeResponseBody;

  /// Optionally add a filter that will log if the function returns true
  final HttpLoggerFilter? _httpLoggerFilter;

  /// Optionally can add custom [LogPrinter]
  PrettyLogInterceptor(
      {bool includeRequest = true,
      bool includeRequestHeaders = true,
      bool includeRequestQueryParams = true,
      bool includeRequestBody = true,
      bool includeResponse = true,
      bool includeResponseHeaders = true,
      bool includeResponseBody = true,
      Logger? logger,
      HttpLoggerFilter? httpLoggerFilter})
      : _includeRequest = includeRequest,
        _includeRequestHeaders = includeRequestHeaders,
        _includeRequestQueryParams = includeRequestQueryParams,
        _includeRequestBody = includeRequestBody,
        _includeResponse = includeResponse,
        _includeResponseHeaders = includeResponseHeaders,
        _includeResponseBody = includeResponseBody,
        _logger = logger ??
            Logger(
                printer: PrettyPrinter(
                    methodCount: 0,
                    colors: true,
                    printTime: false,
                    printEmojis: false)),
        _httpLoggerFilter = httpLoggerFilter;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra[_startTimeKey] = DateTime.now().millisecondsSinceEpoch;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if ((_httpLoggerFilter == null || _httpLoggerFilter!()) && !kIsWeb) {
      final requestLog = _prepareRequestLog(response.requestOptions);
      if (requestLog != '') {
        _logger.i(requestLog);
      }
      final responseLog = _prepareResponseLog(response);
      if (responseLog != '') {
        _logger.t(responseLog);
      }
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if ((_httpLoggerFilter == null || _httpLoggerFilter!()) && !kIsWeb) {
      final requestLog = _prepareRequestLog(err.response?.requestOptions);
      if (requestLog != '') {
        _logger.e(requestLog);
      }
      final responseLog = _prepareResponseLog(err.response);
      if (responseLog != '') {
        _logger.t(responseLog);
      }
    }
    return super.onError(err, handler);
  }

  /// Whether to pretty print a JSON or return as regular String
  String _getBody(dynamic data, String? contentType) {
    final type = contentType?.toLowerCase();
    if (type?.contains('application/json') == true ||
        type?.contains('application/x-www-form-urlencoded') == true) {
      const encoder = JsonEncoder.withIndent('  ');
      // Since the JSON could be a Map or List
      dynamic jsonBody;
      if (data is String) {
        jsonBody = jsonDecode(data);
      } else {
        jsonBody = data;
      }

      return encoder.convert(jsonDecode(jsonEncode(jsonBody)));
    } else if (type?.contains("multipart/form-data") == true) {
      return const JsonEncoder.withIndent('  ')
          .convert(formDataToJson(data as FormData));
    } else {
      return data.toString();
    }
  }

  String _getQueryParams(Map<String, dynamic>? queryParams) {
    var result = '';

    if (queryParams != null && queryParams.isNotEmpty) {
      result += '===== Query Parameters =====';
      // Temporarily save the query params as string concatenation to be joined
      final params = <String>[];
      for (final entry in queryParams.entries) {
        params.add('${entry.key} : ${entry.value.toString()}');
      }
      result += '\n${params.join('\n')}';
    }
    return result;
  }

  String _prepareRequestLog(RequestOptions? requestOptions) {
    var requestString = '';

    if (_includeRequest) {
      requestString = '⤴ REQUEST ⤴\n\n';

      requestString +=
          '${requestOptions?.method ?? ''} ${requestOptions?.path ?? ''}\n';

      if (_includeRequestHeaders) {
        for (final header in (requestOptions?.headers ?? {}).entries) {
          requestString += '${header.key}: ${header.value}\n';
        }
      }

      if (_includeRequestQueryParams &&
          requestOptions?.queryParameters != null &&
          requestOptions!.queryParameters.isNotEmpty) {
        requestString += '\n${_getQueryParams(requestOptions.queryParameters)}';
      }

      if (_includeRequestBody && requestOptions?.data != null) {
        requestString +=
            '\n\n${_getBody(requestOptions?.data, requestOptions?.contentType)}';
      }

      requestString += '\n\n';
    }

    return requestString;
  }

  String _prepareResponseLog(Response? response) {
    var responseString = '';

    if (_includeResponse && response != null) {
      responseString =
          '⤵ RESPONSE [${response.statusCode}/${response.statusMessage}] '
          '⤵\n\n';

      if (_includeResponseHeaders) {
        for (final header in response.headers.map.entries) {
          responseString += '${header.key}: ${header.value}\n';
        }
      }

      if (_includeResponseBody && response.data != null) {
        responseString +=
            '\n\n${_getBody(response.data, response.headers.value('content-type'))}';
      }
    }

    return responseString;
  }

  Map<String, dynamic> formDataToJson(FormData formData) {
    final map = <String, dynamic>{};
    for (final entry in formData.fields) {
      map[entry.key] = entry.value;
    }
    for (final file in formData.files) {
      var responseString = "[application/octet-stream; ";
      if (file.value.filename != null) {
        responseString += "filename=${file.value.filename}; ";
      }
      responseString += "length=${file.value.length}]";
      map[file.key] = responseString;
    }
    return map;
  }
}
