// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import '../../../../core/auth/data/models/user_model.dart';

class ProductModel {
  final int id;
  final String name;
  final String descripton;
  final String price;
  final String image_product;
  final Category category;
  final UserModel user;
  ProductModel({
    required this.id,
    required this.name,
    required this.descripton,
    required this.price,
    required this.image_product,
    required this.category,
    required this.user,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? descripton,
    String? price,
    String? image_product,
    Category? category,
    UserModel? user,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      descripton: descripton ?? this.descripton,
      price: price ?? this.price,
      image_product: image_product ?? this.image_product,
      category: category ?? this.category,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'descripton': descripton,
      'price': price,
      'image_product': image_product,
      'category': category.toMap(),
      'user': user.toMap(),
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'].toInt() as int,
      name: map['name'] as String,
      descripton: map['descripton'] as String,
      price: map['price'] as String,
      image_product: map['image_product'] as String,
      category: Category.fromMap(map['category'] as Map<String, dynamic>),
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, descripton: $descripton, price: $price, image_product: $image_product, category: $category, user: $user)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.descripton == descripton &&
        other.price == price &&
        other.image_product == image_product &&
        other.category == category &&
        other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        descripton.hashCode ^
        price.hashCode ^
        image_product.hashCode ^
        category.hashCode ^
        user.hashCode;
  }
}

class Category {
  final int id;
  final String name;
  final String description;
  final String created_at;
  final String updated_at;
  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.created_at,
    required this.updated_at,
  });

  Category copyWith({
    int? id,
    String? name,
    String? description,
    String? created_at,
    String? updated_at,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'].toInt() as int,
      name: map['name'] as String,
      description: map['description'] as String,
      created_at: map['created_at'] as String,
      updated_at: map['updated_at'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}
