import 'dart:convert';

import 'product_model.dart';

class ProductResponseModel {
  final List<ProductModel> data;
  ProductResponseModel({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductResponseModel.fromMap(Map<String, dynamic> map) {
    return ProductResponseModel(
      data: List<ProductModel>.from(
        (map['data'] as List<int>).map<ProductModel>(
          (x) => ProductModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductResponseModel.fromJson(String source) =>
      ProductResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
