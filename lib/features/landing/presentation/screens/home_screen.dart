import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multivendor_test/core/di.dart';
import 'package:multivendor_test/core/extensions/widget_extensions.dart';
import 'package:multivendor_test/core/value_notifiers.dart';
import 'package:multivendor_test/core/widgets/loading_indicator.dart';
import 'package:multivendor_test/features/category/presentation/blocs/category_cubit/category_cubit.dart';
import 'package:multivendor_test/features/category/presentation/widgets/category_horizontal_list.dart';
import 'package:multivendor_test/features/landing/presentation/blocs/banner_cubit/banner_cubit.dart';
import 'package:multivendor_test/features/landing/presentation/widgets/banner_carousel.dart';
import 'package:multivendor_test/features/landing/presentation/widgets/custom_title_with_show_all_link.dart';
import 'package:multivendor_test/features/landing/presentation/widgets/home_search_bar.dart';
import 'package:multivendor_test/features/landing/presentation/widgets/title_with_show_all_link.dart';
import 'package:multivendor_test/features/landing/presentation/widgets/world_shopping_widget.dart';
import 'package:multivendor_test/features/products/presentation/blocs/product_cubit/product_cubit.dart';
import 'package:multivendor_test/features/products/presentation/screens/product_list_by_category_screen.dart';
import 'package:multivendor_test/features/products/presentation/widgets/product_horizontal_list.dart';
import 'package:multivendor_test/features/products/presentation/widgets/product_horizontal_list_v2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categoryCubit = injector<CategoryCubit>();
  final bannerCubit = injector<BannerCubit>();
  final productCubit = injector<ProductCubit>();

  @override
  void initState() {
    categoryCubit.getAllCategories();
    bannerCubit.getAllBannerData();
    productCubit.getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => categoryCubit),
        BlocProvider(create: (context) => bannerCubit),
        BlocProvider(create: (context) => productCubit),
      ],
      child: ValueListenableBuilder(
          valueListenable: bottomNavigationBar,
          builder: (context, value, widget) {
            return SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  toolbarHeight: 80,
                  title: const HomeSearchBar(),
                ),
                body: RefreshIndicator(
                  onRefresh: () async {
                    categoryCubit.getAllCategories();
                    bannerCubit.getAllBannerData();
                    productCubit.getAllProducts();
                  },
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(height: 5),
                        BlocBuilder<CategoryCubit, CategoryState>(
                          builder: (context, state) {
                            if (state is CategoryLoading) {
                              return const LoadingIndicator();
                            } else if (state is CategoryError) {
                              return ErrorWidget(state.error);
                            } else if (state is CategorySuccess) {
                              return CategoryHorizontalList(
                                categories: state.categories,
                              );
                            } else {
                              return const LoadingIndicator();
                            }
                          },
                        ),
                        BlocBuilder<BannerCubit, BannerState>(
                          builder: (context, state) {
                            if (state is BannerLoading) {
                              return const LoadingIndicator();
                            } else if (state is BannerError) {
                              return ErrorWidget(state.error);
                            } else if (state is BannerSuccess) {
                              return BannerCarousel(
                                bannerData: state.bannerData,
                              );
                            } else {
                              return const LoadingIndicator();
                            }
                          },
                        ),
                        const SizedBox(height: 10),
                        BlocBuilder<ProductCubit, ProductState>(
                          builder: (context, state) {
                            if (state is ProductLoading) {
                              return const LoadingIndicator();
                            } else if (state is ProductError) {
                              return ErrorWidget(state.error);
                            } else if (state is ProductSuccess) {
                              return Column(
                                children: [
                                  TitleWithShowAllLink(
                                    title: 'Gismo Choice',
                                    onTap: () {},
                                  ),
                                  const SizedBox(height: 10),
                                  ProductHorizontalList(
                                    products: state.products,
                                    badgeTitle: 'New',
                                  ),
                                ],
                              );
                            } else {
                              return const LoadingIndicator();
                            }
                          },
                        ),
                        const WorldShoppingWidget()
                            .paddingSymmetric(vertical: 10),
                        BlocBuilder<ProductCubit, ProductState>(
                          builder: (context, state) {
                            if (state is ProductLoading) {
                              return const LoadingIndicator();
                            } else if (state is ProductError) {
                              return ErrorWidget(state.error);
                            } else if (state is ProductSuccess) {
                              return Column(
                                children: [
                                  CustomTitleWithShowAllLink(
                                    title: 'Gadget Day',
                                    subTitle: 'ELECTRONICS',
                                    ontTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductListByCategoryScreen(
                                          categoryTitle: 'Gadget Day',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ProductHorizontalListV2(
                                    products: state.products,
                                  ),
                                ],
                              );
                            } else {
                              return const LoadingIndicator();
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                        BlocBuilder<ProductCubit, ProductState>(
                          builder: (context, state) {
                            if (state is ProductLoading) {
                              return const LoadingIndicator();
                            } else if (state is ProductError) {
                              return ErrorWidget(state.error);
                            } else if (state is ProductSuccess) {
                              return Column(
                                children: [
                                  TitleWithShowAllLink(
                                    title: 'Electis Choice',
                                    onTap: () {},
                                  ),
                                  const SizedBox(height: 10),
                                  ProductHorizontalList(
                                    products: state.products,
                                    badgeTitle: 'Deal',
                                  ),
                                ],
                              );
                            } else {
                              return const LoadingIndicator();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                endDrawer: const Drawer(),
              ),
            );
          }),
    );
  }
}
