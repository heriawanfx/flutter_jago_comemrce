import 'package:dartz/dartz.dart';
import 'package:flutter_jago_commerce/core/data/auth_local_datasource.dart';
import 'package:flutter_jago_commerce/core/data/auth_remote_datasource.dart';
import 'package:flutter_jago_commerce/core/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/core/data/response/auth_response_model.dart';

class AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepository({
    required this.authLocalDataSource,
    required this.authRemoteDatasource,
  });

  Future<Either<Exception, AuthResponseModel>> login(
      LoginRequestModel model) async {
    try {
      final response = await authRemoteDatasource.login(model);
      if (response != null) {
        authLocalDataSource.saveAuthData(response);
        return Right(response);
      }
    } on Exception catch (e) {
      return Left(e);
    }

    throw Exception('Error Occured');
  }
}
