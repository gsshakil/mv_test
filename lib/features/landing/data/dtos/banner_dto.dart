import 'package:multivendor_test/features/landing/domain/entities/banner_entity.dart';

class BannerDto extends BannerEntity {
  const BannerDto({
    required super.id,
    required super.title,
    required super.subTitle,
    required super.buttonText,
    required super.bgColor,
    required super.bgImagePath,
  });
}
