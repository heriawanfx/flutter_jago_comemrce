import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_jago_commerce/core/exception/api_exception.dart';
import 'package:flutter_jago_commerce/core/remote/dio_handler.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/response/auth_response_model.dart';

class AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasource({required this.dio});

  Future<Either<ApiException, AuthResponseModel?>> login(
      LoginRequestModel model) async {
    final response = await dio.postEncoded(
      '/api/login',
      data: model.toMap(),
      isEncoded: false,
    );

    final data = response.data as Map<String, dynamic>;

    var throwable = ApiException.fromMap(data);

    if (throwable.isError) {
      return Left(throwable);
    }

    return Right(AuthResponseModel.fromMap(data));
  }

  Future<Either<ApiException, AuthResponseModel?>> register(
      RegisterRequestModel model) async {
    final response = await dio.postEncoded(
      '/api/register',
      data: model.toMap(),
      isEncoded: false,
    );

    final data = response.data as Map<String, dynamic>;

    var throwable = ApiException.fromMap(data);

    if (throwable.isError) {
      return Left(throwable);
    }

    return Right(AuthResponseModel.fromMap(data));
  }

  Future<Either<ApiException, bool>> logout() async {
    final response = await dio.postEncoded(
      '/api/logout',
      isEncoded: false,
    );
    final data = response.data as Map<String, dynamic>;

    if (data['success'] == true || kDebugMode) {
      return const Right(true);
    }

    return Left(ApiException.fromMap(data));
  }
}
