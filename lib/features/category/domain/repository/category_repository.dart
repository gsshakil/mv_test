import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';

abstract class CategoryRepository{
  Future<Either<Failure, List<CategoryEntity>>> getAllCategories();
}