import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/presentation/widgets/new_badge.dart';
import 'package:multivendor_test/features/products/presentation/widgets/rating_widget.dart';

class ProductCardV1 extends StatelessWidget {
  const ProductCardV1({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [_buildImage(context), _buildRatingAndNewBadge()],
            ),
            _buildTitleAndPrice(context),
          ],
        ),
      ),
    );
  }

  Padding _buildRatingAndNewBadge() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          product.isNew ? const NewBadge() : const SizedBox(),
          RatingWidget(rating: product.rating.toString()),
        ],
      ),
    );
  }

  Container _buildImage(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 160,
        maxHeight: 160,
        minWidth: MediaQuery.of(context).size.width * 0.45,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Center(
        child: Image.asset(product.imagePath),
      ),
    );
  }

  Container _buildTitleAndPrice(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      margin: const EdgeInsets.only(left: 10),
      child: Column(
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
      ),
    );
  }
}
