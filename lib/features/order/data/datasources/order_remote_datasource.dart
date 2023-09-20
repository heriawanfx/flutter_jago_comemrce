import 'package:dio/dio.dart';

import '../../../../core/exceptions/api_exception.dart';
import '../../../../core/remote/dio_handler.dart';
import '../../../../core/remote/models/api_response.dart';
import '../models/order_response_model.dart';
import '../models/requests/order_request_model.dart';

class OrderRemoteDatasource {
  final Dio dio;

  OrderRemoteDatasource({required this.dio});

  Future<ApiResponse<OrderResponseModel>> submitOrder(
      OrderRequestModel model) async {
    final response = await dio.postEncoded('/api/orders',
        data: model.toMap(), isEncoded: false);

    final responseMap = response.data as Map<String, dynamic>;

    return ApiResponse.fromMap(
        responseMap, (data) => OrderResponseModel.fromMap(data));
  }
}
