import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/landing/domain/entities/banner_entity.dart';
import 'package:multivendor_test/features/landing/domain/repository/banner_repository.dart';

class GetAllBannerDataUseCase {
  BannerRepository bannerRepository;

  GetAllBannerDataUseCase({required this.bannerRepository});

  Future<Either<Failure, List<BannerEntity>>> call() async {
    return await bannerRepository.getAllBannerData();
  }
}
