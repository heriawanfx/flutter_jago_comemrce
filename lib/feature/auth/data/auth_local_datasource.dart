import 'dart:convert';

import 'package:flutter_jago_commerce/feature/auth/data/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  final SharedPreferences preferences;

  AuthLocalDataSource({required this.preferences});

  Future<bool> saveAuthData(AuthResponseModel model) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = jsonEncode(model.toJson());
    final result = await pref.setString('auth', authJson);
    return result;
  }

  Future<AuthResponseModel?> getAuthData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authMap = jsonDecode(authJson);
    final authModel = AuthResponseModel.fromJson(authMap);
    return authModel;
  }

  Future<bool> removeAuthData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final result = await pref.remove('auth');
    return result;
  }
}
