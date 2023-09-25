// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class BannerModel {
  final int id;
  final String name;
  final String banner_url;
  final int is_enable;
  final String created_at;
  final String updated_at;
  BannerModel({
    required this.id,
    required this.name,
    required this.banner_url,
    required this.is_enable,
    required this.created_at,
    required this.updated_at,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'banner_url': banner_url,
      'is_enable': is_enable,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory BannerModel.fromMap(Map<String, dynamic> map) {
    return BannerModel(
      id: map['id'].toInt() as int,
      name: map['name'] as String,
      banner_url: map['banner_url'] as String,
      is_enable: map['is_enable'].toInt() as int,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BannerModel.fromJson(String source) =>
      BannerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
