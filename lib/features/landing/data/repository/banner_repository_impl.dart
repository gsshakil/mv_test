import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/exception.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/landing/data/data_sources/local/banner_data_source.dart';
import 'package:multivendor_test/features/landing/domain/entities/banner_entity.dart';
import 'package:multivendor_test/features/landing/domain/repository/banner_repository.dart';

class BannerRepositoryImpl extends BannerRepository{
  final BannerDataSource bannerDataSource;

  BannerRepositoryImpl({required this.bannerDataSource});
  @override
  Future<Either<Failure, List<BannerEntity>>> getAllBannerData() async {
    try {
      List<BannerEntity> result = await bannerDataSource.getAllBannerData();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ExceptionFailure(exception: e));
    }
  }

}