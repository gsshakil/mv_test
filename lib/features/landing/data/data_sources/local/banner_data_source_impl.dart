import 'package:flutter/material.dart';
import 'package:multivendor_test/features/landing/data/data_sources/local/banner_data_source.dart';
import 'package:multivendor_test/features/landing/data/dtos/banner_dto.dart';

class BannerDataSourceImpl extends BannerDataSource {
  final bannerData = const [
    BannerDto(
      id: 1,
      title: 'Try Bold\nExperience',
      subTitle: 'Sony think different',
      buttonText: 'Discount 40%',
      bgColor:  Color(0xFFD4C4FC),
      bgImagePath: 'assets/images/carousel_1.png',
    ),
    BannerDto(
      id: 1,
      title: 'Feel Superior',
      subTitle: 'Yamaha makes\ngreat product',
      buttonText: 'Discount 30%',
      bgColor:  Color.fromARGB(255, 249, 239, 153),
      bgImagePath: 'assets/images/carousel_1.png',
    ),
    BannerDto(
      id: 1,
      title: 'Live Elegant',
      subTitle: 'MUI will make\nyou feel elegant',
      buttonText: 'Discount 60%',
      bgColor:  Color.fromARGB(255, 45, 161, 124),
      bgImagePath: 'assets/images/carousel_1.png',
    ),
  ];

  @override
  Future<List<BannerDto>> getAllBannerData() async {
    return bannerData;
  }
}
