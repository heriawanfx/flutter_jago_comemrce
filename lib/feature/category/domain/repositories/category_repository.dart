import 'package:dartz/dartz.dart';
import '../../data/datasources/category_remote_datasource.dart';
import '../../data/models/category_model.dart';

class CategoryRepository {
  final CategoryRemoteDatasource categoryRemoteDatasource;

  CategoryRepository({required this.categoryRemoteDatasource});

  Future<Either<String, List<CategoryModel>>> getCategories() async {
    final either = await categoryRemoteDatasource.getCategories();

    return either.fold((e) {
      return Left(e.message);
    }, (model) {
      return Right(model.data);
    });
  }

  Future<Either<String, CategoryModel?>> getCategory(int id) async {
    final either = await categoryRemoteDatasource.getCategory(id);

    return either.fold((e) {
      return Left(e.message);
    }, (model) {
      return Right(model);
    });
  }
}
