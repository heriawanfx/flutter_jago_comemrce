import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../exceptions/api_exception.dart';
import '../../../remote/dio_handler.dart';
import '../models/requests/login_request_model.dart';
import '../models/requests/register_request_model.dart';
import '../models/auth_response_model.dart';

class AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasource({required this.dio});

  Future<Either<ApiException, AuthResponseModel>> login(
      LoginRequestModel model) async {
    final response = await dio.postEncoded(
      '/api/login',
      data: model.toMap(),
      isEncoded: false,
    );

    final responseMap = response.data as Map<String, dynamic>;

    var throwable = ApiException.fromMap(responseMap);

    if (throwable.isError) {
      return Left(throwable);
    }

    return Right(AuthResponseModel.fromMap(responseMap));
  }

  Future<Either<ApiException, AuthResponseModel>> register(
      RegisterRequestModel model) async {
    final response = await dio.postEncoded(
      '/api/register',
      data: model.toMap(),
      isEncoded: false,
    );

    final responseMap = response.data as Map<String, dynamic>;

    var throwable = ApiException.fromMap(responseMap);

    if (throwable.isError) {
      return Left(throwable);
    }

    return Right(AuthResponseModel.fromMap(responseMap));
  }

  Future<Either<ApiException, bool>> logout() async {
    final response = await dio.postEncoded(
      '/api/logout',
      isEncoded: false,
    );
    final responseMap = response.data as Map<String, dynamic>;

    if (responseMap['success'] == true || kDebugMode) {
      return const Right(true);
    }

    return Left(ApiException.fromMap(responseMap));
  }
}
