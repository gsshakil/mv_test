import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/domain/repository/product_repository.dart';

class GetAllProductsUseCase {
  ProductRepository productRepository;

  GetAllProductsUseCase({required this.productRepository});

  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await productRepository.getAllProducts();
  }
}
