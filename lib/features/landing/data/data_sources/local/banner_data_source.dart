import 'package:multivendor_test/features/landing/data/dtos/banner_dto.dart';

abstract class BannerDataSource{
  Future<List<BannerDto>> getAllBannerData();
}