import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/exceptions/api_exception.dart';
import '../models/category_model.dart';
import '../models/category_response_model.dart';

class CategoryRemoteDatasource {
  final Dio dio;

  CategoryRemoteDatasource({required this.dio});

  Future<Either<ApiException, CategoryResponseModel>> getCategories() async {
    final response = await dio.get('/api/categories');

    final responseMap = response.data as Map<String, dynamic>;

    var exception = ApiException.fromMap(responseMap);
    if (exception.isError) {
      return Left(exception);
    }

    return Right(CategoryResponseModel.fromMap(responseMap));
  }

  Future<Either<ApiException, CategoryModel>> getCategory(int id) async {
    final response = await dio.get('/api/categories/$id');

    final responseMap = response.data as Map<String, dynamic>;

    var exception = ApiException.fromMap(responseMap);
    if (exception.isError) {
      return Left(exception);
    }

    var dataMap = responseMap['data'] as Map<String, dynamic>;

    return Right(CategoryModel.fromMap(dataMap));
  }
}
