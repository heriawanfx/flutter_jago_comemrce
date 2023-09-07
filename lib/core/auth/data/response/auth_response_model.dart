// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AuthResponseModel {
  String? jwtToken;
  UserResponseModel? user;

  AuthResponseModel({this.jwtToken, this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwt-token': jwtToken,
      'user': user?.toMap(),
    };
  }

  factory AuthResponseModel.fromMap(Map<String, dynamic> map) {
    return AuthResponseModel(
      jwtToken: map['jwt-token'] != null ? map['jwt-token'] as String : null,
      user: map['user'] != null
          ? UserResponseModel.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory AuthResponseModel.fromJson(String source) =>
      AuthResponseModel.fromMap(jsonDecode(source) as Map<String, dynamic>);
}

class UserResponseModel {
  int? id;
  String? name;
  String? role;

  UserResponseModel({this.id, this.name, this.role});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'role': role,
    };
  }

  factory UserResponseModel.fromMap(Map<String, dynamic> map) {
    return UserResponseModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      role: map['role'] != null ? map['role'] as String : null,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory UserResponseModel.fromJson(String source) =>
      UserResponseModel.fromMap(jsonDecode(source) as Map<String, dynamic>);
}
