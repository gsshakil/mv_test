import 'package:multivendor_test/features/products/data/dtos/product_dto.dart';

abstract class ProductDataSource{
  Future<List<ProductDto>> getAllProducts();
}