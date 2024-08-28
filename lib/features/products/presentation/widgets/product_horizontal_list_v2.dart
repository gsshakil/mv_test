import 'package:flutter/material.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/presentation/widgets/product_card_v2.dart';

class ProductHorizontalListV2 extends StatelessWidget {
  const ProductHorizontalListV2({required this.products, super.key});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCardV2(product: products[index]);
          }),
    );
  }
}
