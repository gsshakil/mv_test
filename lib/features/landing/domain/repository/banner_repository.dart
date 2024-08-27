import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/landing/domain/entities/banner_entity.dart';

abstract class BannerRepository{
  Future<Either<Failure, List<BannerEntity>>> getAllBannerData();
}