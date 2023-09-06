// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Throwable implements Exception {
  final String message;

  Throwable(this.message);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory Throwable.fromMap(Map<String, dynamic> map) {
    return Throwable(
      map['message'] != null ? map['message'] as String : '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Throwable.fromJson(String source) =>
      Throwable.fromMap(json.decode(source) as Map<String, dynamic>);
}
