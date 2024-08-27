import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/exception.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/category/data/data_sources/local/category_data_source.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';
import 'package:multivendor_test/features/category/domain/repository/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository{
  final CategoryDataSource categoryDataSource;

  CategoryRepositoryImpl({required this.categoryDataSource});
  @override
  Future<Either<Failure, List<CategoryEntity>>> getAllCategories() async {
    try {
      List<CategoryEntity> result = await categoryDataSource.getAllCategories();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ExceptionFailure(exception: e));
    }
  }

}