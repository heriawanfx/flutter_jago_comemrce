// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterRequestModel {
  String? email;
  String? password;
  String? name;

  RegisterRequestModel({this.email, this.password, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'name': name,
    };
  }

  factory RegisterRequestModel.fromMap(Map<String, dynamic> map) {
    return RegisterRequestModel(
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory RegisterRequestModel.fromJson(String source) =>
      RegisterRequestModel.fromMap(jsonDecode(source) as Map<String, dynamic>);
}
