// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import '../../../../core/remote/models/api_response.dart';
import '../models/banner_model.dart';

class BannerRemoteDatasource {
  Dio dio;

  BannerRemoteDatasource({
    required this.dio,
  });

  Future<ApiResponse<BannerModel>> getBanners() async {
    final response = await dio.get('/api/banners');
    final responseMap = response.data as Map<String, dynamic>;
    return ApiResponse.fromMap(
        responseMap, (data) => BannerModel.fromMap(data));
  }
}
