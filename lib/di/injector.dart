import 'package:dio/dio.dart';
import '../core/remote/api_interceptor.dart';
import '../core/remote/dio_handler.dart';
import '../core/auth/data/datasources/auth_local_datasource.dart';
import '../core/auth/data/datasources/auth_remote_datasource.dart';
import '../core/auth/domain/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getInstance = GetIt.instance;

class Injector {
  Future<void> initialize() async {
    await _initCore();
    _initRepository();
    _initCommon();
  }

  Future<void> _initCore() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    getInstance.registerLazySingleton<SharedPreferences>(() {
      return sharedPreferences;
    });

    getInstance.registerLazySingleton<AuthLocalDataSource>(() {
      return AuthLocalDataSource(preferences: getInstance());
    });

    getInstance.registerLazySingleton<ApiInterceptor>(() {
      return ApiInterceptor(authLocalDataSource: getInstance());
    });

    getInstance.registerLazySingleton<DioHandler>(() {
      return DioHandler(apiInterceptor: getInstance());
    });

    getInstance.registerLazySingleton<Dio>(() {
      return getInstance<DioHandler>().dio;
    });

    getInstance.registerLazySingleton<AuthRemoteDatasource>(() {
      return AuthRemoteDatasource(dio: getInstance());
    });
  }

  void _initCommon() {}

  void _initRepository() {
    getInstance.registerLazySingleton<AuthRepository>(() {
      return AuthRepository(
        authLocalDataSource: getInstance(),
        authRemoteDatasource: getInstance(),
      );
    });
  }
}
