import 'package:dartz/dartz.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/models/requests/login_request_model.dart';
import '../../data/models/requests/register_request_model.dart';
import '../../data/models/auth_response_model.dart';

class AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDatasource authRemoteDatasource;

  AuthRepository({
    required this.authLocalDataSource,
    required this.authRemoteDatasource,
  });

  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel requestModel) async {
    final either = await authRemoteDatasource.login(requestModel);

    return either.fold((e) {
      return Left(e.message);
    }, (model) {
      final completeModel = model.copyWith(
          user: model.user?.copyWith(
        email: requestModel.email,
        password: requestModel.password,
      ));
      authLocalDataSource.saveAuthData(completeModel);
      return Right(completeModel);
    });
  }

  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel requestModel) async {
    final either = await authRemoteDatasource.register(requestModel);

    return either.fold((e) {
      return Left(e.message);
    }, (model) {
      final completeModel = model.copyWith(
          user: model.user?.copyWith(
        email: requestModel.email,
        password: requestModel.password,
      ));
      authLocalDataSource.saveAuthData(completeModel);
      return Right(completeModel);
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

  Future<bool> reLogin() async {
    final authData = await getAuthData();
    final user = authData?.user;
    if (user != null) {
      final model = LoginRequestModel(
          email: user.email ?? '', password: user.password ?? '');
      final response = await login(model);
      return response.isRight();
    }
    return false;
  }
}
