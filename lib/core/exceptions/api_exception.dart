// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ApiException implements Exception {
  final String message;

  ApiException(this.message);

  bool get isError => message.isNotEmpty == true;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory ApiException.fromMap(Map<String, dynamic> map) {
    return ApiException(
      map['message'] != null ? map['message'] as String : '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory ApiException.fromJson(String source) =>
      ApiException.fromMap(jsonDecode(source) as Map<String, dynamic>);
}
