import 'package:dartz/dartz.dart';
import 'package:flutter_jago_commerce/core/auth/data/datasource/auth_local_datasource.dart';
import 'package:flutter_jago_commerce/core/auth/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/core/auth/data/response/auth_response_model.dart';
import 'package:flutter_jago_commerce/core/exception/throwable.dart';

class AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepository({
    required this.authLocalDataSource,
    required this.authRemoteDatasource,
  });

  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel model) async {
    final response = await authRemoteDatasource.login(model);

    return response.fold((e) => Left(e.message), (model) {
      if (model != null) {
        authLocalDataSource.saveAuthData(model);
        return Right(model);
      }
      throw Throwable('Error Occured');
    });
  }

  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel model) async {
    final response = await authRemoteDatasource.register(model);

    return response.fold((e) => Left(e.message), (model) {
      if (model != null) {
        authLocalDataSource.saveAuthData(model);
        return Right(model);
      }
      throw Throwable('Error Occured');
    });
  }

  Future<AuthResponseModel?> getAuthData() async {
    final model = await authLocalDataSource.getAuthData();

    authLocalDataSource.removeAuthData();
    return model;
  }

  Future logout() async {
    await authLocalDataSource.removeAuthData();
  }
}
