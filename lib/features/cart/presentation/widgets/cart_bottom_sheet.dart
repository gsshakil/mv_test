import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/features/cart/presentation/widgets/cart_header.dart';
import 'package:multivendor_test/features/cart/presentation/widgets/cart_item_card.dart';
import 'package:multivendor_test/features/products/data/dtos/product_dto.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
    required this.cartItems,
  });

  final List<ProductDto> cartItems;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CartHeader().padding(bottom: 10),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return CartItemCart(product: cartItems[index])
                        .padding(bottom: 10);
                  }),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              color: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Center(
                  child: Text('Checkout (3)'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
