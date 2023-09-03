import 'package:dio/dio.dart';
import 'package:flutter_jago_commerce/core/data/remote/dio_handler.dart';
import 'package:flutter_jago_commerce/feature/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/data/response/auth_response_model.dart';

class AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasource({required this.dio});

  Future<AuthResponseModel?> login(LoginRequestModel model) async {
    final response = await dio.postEncoded('api/login', data: model.toJson());
    final data = response.data;
    return data;
  }

  Future<AuthResponseModel?> register(RegisterRequestModel model) async {
    final response =
        await dio.postEncoded('api/register', data: model.toJson());
    final data = response.data;
    return data;
  }

  Future<String?> logout() async {
    final response = await dio.postEncoded('api/logout');
    final data = response.data;
    return data;
  }
}
