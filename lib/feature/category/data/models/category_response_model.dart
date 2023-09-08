import 'dart:convert';

import 'category_model.dart';

class CategoryResponseModel {
  final List<CategoryModel> data;
  CategoryResponseModel({
    required this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory CategoryResponseModel.fromMap(Map<String, dynamic> map) {
    return CategoryResponseModel(
      data: List<CategoryModel>.from(
        (map['data'] as List<int>).map<CategoryModel>(
          (x) => CategoryModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryResponseModel.fromJson(String source) =>
      CategoryResponseModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
