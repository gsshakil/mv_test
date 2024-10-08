import 'package:flutter/material.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/presentation/widgets/product_card_v1.dart';

class ProductHorizontalList extends StatelessWidget {
  const ProductHorizontalList({
    required this.products,
    required this.badgeTitle,
    super.key,
  });

  final List<ProductEntity> products;
  final String badgeTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCardV1(
              product: products[index],
              badgeTitle: badgeTitle,
            );
          }),
    );
  }
}
