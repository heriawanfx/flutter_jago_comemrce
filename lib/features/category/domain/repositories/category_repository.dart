import 'package:dartz/dartz.dart';
import '../../data/datasources/category_remote_datasource.dart';
import '../../data/models/category_model.dart';

class CategoryRepository {
  final CategoryRemoteDatasource categoryRemoteDatasource;

  CategoryRepository({required this.categoryRemoteDatasource});

  Future<Either<String, List<CategoryModel>>> getCategories() async {
    final response = await categoryRemoteDatasource.getCategories();

    if (response.isError) {
      return Left(response.errorMessage);
    }
    return Right(response.getDataList);
  }

  Future<Either<String, CategoryModel?>> getCategory(String id) async {
    final response = await categoryRemoteDatasource.getCategory(id);

    if (response.isError) {
      return Left(response.errorMessage);
    }
    return Right(response.getData);
  }
}
