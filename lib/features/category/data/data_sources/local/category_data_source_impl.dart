import 'package:multivendor_test/features/category/data/data_sources/local/category_data_source.dart';
import 'package:multivendor_test/features/category/data/dtos/category_dto.dart';

class CategoryDataSourceImpl extends CategoryDataSource {
  final categories = const [
    CategoryDto(id: 1, name: 'Promo'),
    CategoryDto(id: 1, name: 'Best Deals'),
    CategoryDto(id: 1, name: 'Windy Basics'),
    CategoryDto(id: 1, name: 'Sports'),
    CategoryDto(id: 1, name: 'Electronics'),
  ];
  @override
  Future<List<CategoryDto>> getAllCategories() async {
    return categories;
  }
}
