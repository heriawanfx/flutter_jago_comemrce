// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../data/datasources/banner_remote_datasource.dart';
import '../../data/models/banner_model.dart';

class BannerRepository {
  BannerRemoteDatasource bannerRemoteDatasource;

  BannerRepository({
    required this.bannerRemoteDatasource,
  });

  Future<Either<String, List<BannerModel>>> getBanners() async {
    final result = await bannerRemoteDatasource.getBanners();
    if (result.isError) {
      return Left(result.errorMessage);
    }

    return Right(result.getDataList);
  }
}
