import 'package:flutter/material.dart';
import 'package:multivendor_test/core/value_notifiers.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';

class CategoryHorizontalListItem extends StatelessWidget {
  const CategoryHorizontalListItem({
    super.key,
    required this.category,
    required this.onTap,
    required this.index,
  });

  final CategoryEntity category;
  final Function() onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedCategory,
        builder: (context, value, widget) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: selectedCategory.value == index
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.surfaceContainer,
              ),
              child: InkWell(
                child: Center(
                  child: Text(
                    category.name,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
