// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import '../../data/datasources/product_remote_datasource.dart';
import '../../data/models/product_model.dart';

class ProductRepository {
  final ProductRemoteDatasource productRemoteDatasource;

  ProductRepository({required this.productRemoteDatasource});

  Future<Either<String, List<ProductModel>>> getProducts({
    int? category_id,
  }) async {
    final response = await productRemoteDatasource.getProducts(
      category_id: category_id,
    );

    if (response.isError) {
      return Left(response.errorMessage);
    }
    return Right(response.getDataList);
  }

  Future<Either<String, ProductModel>> getProduct(int id) async {
    final response = await productRemoteDatasource.getProduct(id);

    if (response.isError) {
      return Left(response.errorMessage);
    }
    return Right(response.getData);
  }
}
