import 'package:flutter/material.dart';
import 'package:multivendor_test/core/value_notifiers.dart';
import 'package:multivendor_test/features/category/data/dtos/category_dto.dart';
import 'package:multivendor_test/features/category/presentation/widgets/category_filter_horizontal_list_item.dart';

const categoryFilters = [
  CategoryDto(id: 1, name: 'Latest'),
  CategoryDto(id: 1, name: 'Popular'),
  CategoryDto(id: 1, name: 'Top Deals'),
];

class CategoryFilterHorizontalList extends StatelessWidget {
  const CategoryFilterHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: categoryFilters.length,
          itemBuilder: (context, index) {
            return CategoryFilterHorizontalListItem(
              category: categoryFilters[index],
              index: index,
              onTap: () => selectedCategoryFilter.value = index,
            );
          }),
    );
  }
}
