import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/core/value_notifiers.dart';
import 'package:multivendor_test/features/landing/presentation/widgets/title_with_show_all_link.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/presentation/widgets/product_card_v1.dart';

class ProductHorizontalList extends StatelessWidget {
  const ProductHorizontalList({required this.products, super.key});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithShowAllLink(
          title: 'Gismo Choice',
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCardV1(product: products[index]);
              }),
        ),
      ],
    );
  }
}
