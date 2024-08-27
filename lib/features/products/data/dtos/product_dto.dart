import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';

class ProductDto extends ProductEntity {
  const ProductDto({
    required super.id,
    required super.name,
    required super.price,
    required super.rating,
    required super.isNew,
    required super.reviewCount,
    required super.colors,
    required super.imagePath,
  });
}
