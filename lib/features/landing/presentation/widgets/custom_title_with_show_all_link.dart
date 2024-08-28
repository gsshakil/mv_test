import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';

class CustomTitleWithShowAllLink extends StatelessWidget {
  const CustomTitleWithShowAllLink({
    super.key,
    required this.title,
    required this.subTitle,
    required this.ontTap,
  });

  final String title;
  final String subTitle;
  final Function() ontTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
                child: const Icon(Icons.camera_alt_rounded),
              ).padding(right: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.5),
                        ),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall!,
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: ontTap,
            child: Text(
              'Show All',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: Theme.of(context).colorScheme.surfaceBright,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
