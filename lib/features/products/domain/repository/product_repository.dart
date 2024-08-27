import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getAllProducts();
}
