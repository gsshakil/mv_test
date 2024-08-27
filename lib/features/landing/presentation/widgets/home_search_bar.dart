import 'package:flutter/material.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/features/search/custom_search_delegate.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 50,
      onTap: () async {
        await showSearch(
          context: context,
          delegate: CustomSearchDelegate(),
        );
      },
      child: Container(
        height: 65,
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(Icons.search),
              ),
            ).padding(right: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search on Gismo',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  'Electronics . Shoes . Anything',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
