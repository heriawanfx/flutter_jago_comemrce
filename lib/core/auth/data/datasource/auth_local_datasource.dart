import 'dart:convert';

import 'package:flutter_jago_commerce/core/auth/data/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  final SharedPreferences preferences;

  AuthLocalDataSource({required this.preferences});

  Future<bool> saveAuthData(AuthResponseModel model) async {
    final authJson = jsonEncode(model.toJson());
    final result = await preferences.setString('auth', authJson);
    return result;
  }

  Future<String> getAuthData() async {
    final authJson = preferences.getString('auth') ?? '';
    return authJson;
    //final authModel = AuthResponseModel.fromJson(authJson);
    //return authModel;
  }

  Future<bool> removeAuthData() async {
    final result = await preferences.remove('auth');
    return result;
  }
}
