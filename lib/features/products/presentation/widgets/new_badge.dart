import 'package:flutter/material.dart';

class NewBadge extends StatelessWidget {
  const NewBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceDim,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'New',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Theme.of(context).colorScheme.surface,
              ),
        ),
      ),
    );
  }
}
