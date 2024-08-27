
import 'package:flutter/material.dart';

class TitleWithShowAllLink extends StatelessWidget {
  const TitleWithShowAllLink({
    super.key,
    required this.title, 
    required this.onTap, 
     this.showAllLabel = 'Show All', 
  });

  final String title;
  final Function() onTap;
  final String showAllLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              showAllLabel,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.surfaceBright,
                  ),
            ),
          )
        ],
      ),
    );
  }
}