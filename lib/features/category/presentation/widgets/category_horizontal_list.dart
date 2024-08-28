import 'package:flutter/material.dart';
import 'package:multivendor_test/core/value_notifiers.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';
import 'package:multivendor_test/features/category/presentation/widgets/category_horizontal_list_item.dart';

class CategoryHorizontalList extends StatelessWidget {
  const CategoryHorizontalList({required this.categories, super.key});

  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryHorizontalListItem(
              category: categories[index],
              index: index,
              onTap: () => selectedCategory.value = index,
            );
          }),
    );
  }
}

