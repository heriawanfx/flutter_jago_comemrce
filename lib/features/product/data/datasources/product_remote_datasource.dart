// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import '../../../../core/remote/models/api_response.dart';
import '../models/product_model.dart';

class ProductRemoteDatasource {
  final Dio dio;

  ProductRemoteDatasource({required this.dio});

  Future<ApiResponse<ProductModel>> getProducts({int? category_id}) async {
    final response = await dio.get(
      '/api/products',
      queryParameters: {'category_id': category_id},
    );

    final responseMap = response.data as Map<String, dynamic>;

    return ApiResponse.fromMap(
      responseMap,
      (data) => ProductModel.fromMap(data),
    );
  }

  Future<ApiResponse<ProductModel>> getProduct(int id) async {
    final response = await dio.get('/api/products/$id');

    final responseMap = response.data as Map<String, dynamic>;

    return ApiResponse.fromMap(
      responseMap,
      (data) => ProductModel.fromMap(data),
    );
  }
}
