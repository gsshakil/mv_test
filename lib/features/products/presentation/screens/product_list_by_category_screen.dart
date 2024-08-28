import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multivendor_test/core/di.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/core/widgets/loading_indicator.dart';
import 'package:multivendor_test/features/category/presentation/widgets/category_filter_horizontal_list.dart';
import 'package:multivendor_test/features/products/presentation/blocs/product_cubit/product_cubit.dart';
import 'package:multivendor_test/features/products/presentation/widgets/product_card_v1.dart';
import 'package:multivendor_test/features/search/custom_search_delegate.dart';

class ProductListByCategoryScreen extends StatelessWidget {
  const ProductListByCategoryScreen({
    required this.categoryTitle,
    super.key,
  });

  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final productCubit = injector<ProductCubit>();

    return BlocProvider(
      create: (context) => productCubit,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          shadowColor: Theme.of(context).colorScheme.surfaceContainer,
          title: Text(categoryTitle),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: const CategoryFilterHorizontalList()
                        .paddingSymmetric(vertical: 15),
                  ),
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.tune)))
                ],
              ),
              BlocBuilder<ProductCubit, ProductState>(
                builder: (context, state) {
                  if (state is ProductLoading) {
                    return const LoadingIndicator();
                  } else if (state is ProductError) {
                    return ErrorWidget(state.error);
                  } else if (state is ProductSuccess) {
                    return GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
          
                      ),
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return ProductCardV1(
                          product: state.products[index],
                          badgeTitle: 'New',
                        );
                      },
                    );
                  } else {
                    return const LoadingIndicator();
                  }
                },
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
