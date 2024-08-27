import 'package:multivendor_test/features/products/data/data_sources/product_data_source.dart';
import 'package:multivendor_test/features/products/data/dtos/product_dto.dart';

class ProductDataSourceImpl extends ProductDataSource {
  final products = const [
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_1.png',
      reviewCount: 2014,
      colors: [],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: true,
      imagePath: 'assets/images/product_2.png',
      reviewCount: 2014,
      colors: [],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_3.png',
      reviewCount: 2014,
      colors: [],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_4.png',
      reviewCount: 2014,
      colors: [],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_1.png',
      reviewCount: 2014,
      colors: [],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_2.png',
      reviewCount: 2014,
      colors: [],
    ),
  ];
  @override
  Future<List<ProductDto>> getAllProducts() async {
    return products;
  }
}
