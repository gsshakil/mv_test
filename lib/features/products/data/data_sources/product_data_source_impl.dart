import 'package:flutter/material.dart';
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
      category: 'SPEAKER',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: true,
      imagePath: 'assets/images/product_2.png',
      category: 'ELECTRONICS',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_3.png',
      category: 'SPEAKER',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_4.png',
      category: 'SPEAKER',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_1.png',
      category: 'EAR PHONE',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
    ProductDto(
      id: 1,
      name: 'Sony Alpha 9 Mark III Body Only',
      price: 'RP 24.500.000',
      rating: 4.9,
      isNew: false,
      imagePath: 'assets/images/product_2.png',
      category: 'EAR BUD',
      reviewCount: 2014,
      colors: [
        Color(0xFFbdada5),
        Color(0xFFcfced1),
        Color(0xFFFFFFFF),
      ],
    ),
  ];
  @override
  Future<List<ProductDto>> getAllProducts() async {
    return products;
  }
}
