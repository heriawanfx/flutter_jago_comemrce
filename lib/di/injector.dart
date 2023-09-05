import 'package:dio/dio.dart';
import 'package:flutter_jago_commerce/core/data/remote/dio_handler.dart';
import 'package:flutter_jago_commerce/core/data/auth_local_datasource.dart';
import 'package:flutter_jago_commerce/core/data/auth_remote_datasource.dart';
import 'package:flutter_jago_commerce/core/domain/auth_repository.dart';
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
    getInstance.registerLazySingleton<DioHandler>(() {
      return DioHandler(sharedPreferences: getInstance());
    });
    getInstance.registerLazySingleton<Dio>(() {
      return getInstance<DioHandler>().dio;
    });

    getInstance.registerLazySingleton<AuthLocalDataSource>(() {
      return AuthLocalDataSource(preferences: getInstance());
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
