import 'package:dio/dio.dart';
import '../core/remote/api_interceptor.dart';
import '../core/remote/dio_handler.dart';
import '../core/auth/data/datasources/auth_local_datasource.dart';
import '../core/auth/data/datasources/auth_remote_datasource.dart';
import '../core/auth/domain/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../feature/category/data/datasources/category_remote_datasource.dart';
import '../feature/category/domain/repositories/category_repository.dart';

final getInstance = GetIt.instance;

class Injector {
  Future<void> initialize() async {
    await _initCore();
    _initFeatureCategory();
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

    getInstance.registerLazySingleton<AuthRepository>(() {
      return AuthRepository(
        authLocalDataSource: getInstance(),
        authRemoteDatasource: getInstance(),
        categoryRemoteDatasource: getInstance(),
      );
    });
  }

  void _initFeatureCategory() {
    getInstance.registerLazySingleton<CategoryRemoteDatasource>(() {
      return CategoryRemoteDatasource(dio: getInstance());
    });

    getInstance.registerLazySingleton<CategoryRepository>(() {
      return CategoryRepository(
        categoryRemoteDatasource: getInstance(),
      );
    });
  }
}
