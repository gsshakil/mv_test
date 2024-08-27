import 'package:flutter/material.dart';
import 'package:multivendor_test/core/value_notifiers.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';

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
            return ValueListenableBuilder(
                valueListenable: selectedCategory,
                builder: (context, value, widget) {
                  return GestureDetector(
                    onTap: () {
                      selectedCategory.value = index;
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: selectedCategory.value == index
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.surfaceContainer,
                      ),
                      child: InkWell(
                        child: Center(
                          child: Text(categories[index].name),
                        ),
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
