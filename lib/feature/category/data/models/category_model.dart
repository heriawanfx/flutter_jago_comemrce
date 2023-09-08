// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../../../product/data/models/product_model.dart';

class CategoryModel {
  final int id;
  final String name;
  final String description;
  final String created_at;
  final String updated_at;
  final List<ProductModel> products;
  CategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.created_at,
    required this.updated_at,
    required this.products,
  });

  CategoryModel copyWith({
    int? id,
    String? name,
    String? description,
    String? created_at,
    String? updated_at,
    List<ProductModel>? products,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'created_at': created_at,
      'updated_at': updated_at,
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'].toInt() as int,
      name: map['name'] as String,
      description: map['description'] as String,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
      products: List<ProductModel>.from(
        (map['products'] as List<int>).map<ProductModel>(
          (x) => ProductModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
