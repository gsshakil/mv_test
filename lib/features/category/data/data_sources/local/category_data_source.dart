import 'package:multivendor_test/features/category/data/dtos/category_dto.dart';

abstract class CategoryDataSource{
  Future<List<CategoryDto>> getAllCategories();
}