
import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';

class WorldShoppingWidget extends StatelessWidget {
  const WorldShoppingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context)
            .colorScheme
            .surfaceContainerHigh,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'World Shopping',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ).padding(bottom: 5),
              Text(
                'Discount and free shipping',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          RotationTransition(
            turns: const AlwaysStoppedAnimation(30 / 360),
            child: CircleAvatar(
              backgroundColor:
                  Theme.of(context).colorScheme.surfaceDim,
              radius: 25,
              child: Icon(
                Icons.arrow_upward_rounded,
                color: Theme.of(context)
                    .colorScheme
                    .surfaceContainerHigh,
              ),
            ),
          )
        ],
      ),
    );
  }
}
