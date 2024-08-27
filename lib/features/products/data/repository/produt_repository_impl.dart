import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/exception.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/products/data/data_sources/product_data_source.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDataSource productDataSource;

  ProductRepositoryImpl({required this.productDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async {
    try {
      List<ProductEntity> result = await productDataSource.getAllProducts();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ExceptionFailure(exception: e));
    }
  }
}
