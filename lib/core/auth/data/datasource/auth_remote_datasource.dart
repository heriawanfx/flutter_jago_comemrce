import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_jago_commerce/core/exception/throwable.dart';
import 'package:flutter_jago_commerce/core/remote/dio_handler.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/response/auth_response_model.dart';

class AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasource({required this.dio});

  Future<Either<Throwable, AuthResponseModel?>> login(
      LoginRequestModel model) async {
    final response = await dio.postEncoded(
      '/api/login',
      data: model.toMap(),
      isEncoded: false,
    );

    final data = response.data as Map<String, dynamic>;

    var throwable = Throwable.fromMap(data);

    if (throwable.message.isNotEmpty == true) {
      return Left(throwable);
    }

    return Right(AuthResponseModel.fromMap(data));
  }

  Future<Either<Throwable, AuthResponseModel?>> register(
      RegisterRequestModel model) async {
    final response = await dio.postEncoded(
      '/api/register',
      data: model.toMap(),
      isEncoded: false,
    );

    final data = response.data as Map<String, dynamic>;

    var throwable = Throwable.fromMap(data);

    if (throwable.message.isNotEmpty == true) {
      return Left(throwable);
    }

    return Right(AuthResponseModel.fromMap(data));
  }

  Future<String?> logout() async {
    final response = await dio.postEncoded('/api/logout');
    final data = response.data;
    return data as String?;
  }
}
