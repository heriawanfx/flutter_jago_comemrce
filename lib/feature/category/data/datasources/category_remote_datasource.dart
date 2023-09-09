import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/exceptions/api_exception.dart';
import '../../../../core/remote/models/api_response.dart';
import '../../../../core/remote/models/api_response_single.dart';
import '../models/category_model.dart';

class CategoryRemoteDatasource {
  final Dio dio;

  CategoryRemoteDatasource({required this.dio});

  Future<ApiResponse<CategoryModel>> getCategories() async {
    final response = await dio.get('/api/categories');

    final responseMap = response.data as Map<String, dynamic>;

    return ApiResponse.fromMap(
      responseMap,
      (data) => CategoryModel.fromMap(data),
    );
  }

  Future<ApiResponseSingle<CategoryModel>> getCategory(int id) async {
    final response = await dio.get('/api/categories/$id');

    final responseMap = response.data as Map<String, dynamic>;

    return ApiResponseSingle.fromMap(
      responseMap,
      (data) => CategoryModel.fromMap(data),
    );
  }
}
