// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../../../../core/auth/data/models/user_model.dart';
import '../../../category/data/models/category_model.dart';

class ProductModel {
  final int id;
  final String name;
  final String? description;
  final String price;
  final String? image_url;
  final CategoryModel? category;
  final UserModel? user;
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image_url,
    required this.category,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image_url': image_url,
      'category': category?.toMap(),
      'user': user?.toMap(),
    };
  }

  double get priceDouble => double.parse(price);

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String?,
      price: map['price'] as String,
      image_url: map['image_url'] as String?,
      category: map['category'] != null
          ? CategoryModel.fromMap(map['category'] as Map<String, dynamic>)
          : null,
      user: map['user'] != null
          ? UserModel.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
