import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';

class CartItemCart extends StatelessWidget {
  const CartItemCart({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF1e2026),
        ),
        height: 140,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildLeftImage(context),
                    _buildRightPart(context),
                  ],
                ),
              ],
            ),
            Positioned(
              right: -10,
              top: -10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.surfaceBright,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildLeftImage(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 120,
        minWidth: MediaQuery.of(context).size.width * 0.3,
        maxWidth: MediaQuery.of(context).size.width * 0.3,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF383c47),
      ),
      child: Center(
        child: Image.asset(product.imagePath),
      ),
    );
  }

  Container _buildRightPart(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      margin: const EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: Theme.of(context).textTheme.labelLarge,
              ).padding(bottom: 5),
              Text(
                product.price,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ).padding(bottom: 15),
          Row(
            children: product.colors
                .map((e) => CircleAvatar(
                      backgroundColor: e,
                      radius: 10,
                    ).padding(right: 3))
                .toList(),
          )
        ],
      ),
    );
  }
}
