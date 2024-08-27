import 'package:dartz/dartz.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';
import 'package:multivendor_test/features/category/domain/repository/category_repository.dart';

class GetAllCategoriesUseCase {
  CategoryRepository categoryRepository;

  GetAllCategoriesUseCase({required this.categoryRepository});

  Future<Either<Failure, List<CategoryEntity>>> call() async {
    return await categoryRepository.getAllCategories();
  }
}
