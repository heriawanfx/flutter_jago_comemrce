import 'package:dartz/dartz.dart';

import '../../data/datasources/order_remote_datasource.dart';
import '../../data/models/order_response_model.dart';
import '../../data/models/requests/order_request_model.dart';

class OrderRepository {
  final OrderRemoteDatasource orderRemoteDatasource;

  OrderRepository({required this.orderRemoteDatasource});

  Future<Either<String, OrderResponseModel>> submitOrder(
      OrderRequestModel model) async {
    final result = await orderRemoteDatasource.submitOrder(model);

    if (result.isError) {
      return Left(result.errorMessage);
    }

    return Right(result.getData);
  }
}
