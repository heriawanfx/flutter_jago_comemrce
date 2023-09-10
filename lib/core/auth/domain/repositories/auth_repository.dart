import 'package:dartz/dartz.dart';
import '../../../../features/category/data/datasources/category_remote_datasource.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/models/requests/login_request_model.dart';
import '../../data/models/requests/register_request_model.dart';
import '../../data/models/auth_response_model.dart';

class AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDatasource authRemoteDatasource;
  final CategoryRemoteDatasource categoryRemoteDatasource;

  AuthRepository({
    required this.authLocalDataSource,
    required this.authRemoteDatasource,
    required this.categoryRemoteDatasource,
  });

  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel model) async {
    final either = await authRemoteDatasource.login(model);

    return either.fold((e) {
      return Left(e.message);
    }, (model) {
      authLocalDataSource.saveAuthData(model);
      return Right(model);
    });
  }

  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel model) async {
    final either = await authRemoteDatasource.register(model);

    return either.fold((e) {
      return Left(e.message);
    }, (model) {
      authLocalDataSource.saveAuthData(model);
      return Right(model);
    });
  }

  Future<AuthResponseModel?> getAuthData() async {
    return await authLocalDataSource.getAuthData();
  }

  Future<Either<String, bool>> logout() async {
    final either = await authRemoteDatasource.logout();

    return either.fold((e) {
      return Left(e.message);
    }, (success) async {
      if (success) {
        final isLogout = await authLocalDataSource.removeAuthData();
        return Right(isLogout);
      }
      return const Right(false);
    });
  }
}
