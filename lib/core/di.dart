import 'package:get_it/get_it.dart';
import 'package:multivendor_test/features/category/data/data_sources/local/category_data_source.dart';
import 'package:multivendor_test/features/category/data/data_sources/local/category_data_source_impl.dart';
import 'package:multivendor_test/features/category/data/repository/category_repository_impl.dart';
import 'package:multivendor_test/features/category/domain/repository/category_repository.dart';
import 'package:multivendor_test/features/category/domain/use_cases/get_all_category_usecase.dart';
import 'package:multivendor_test/features/category/presentation/blocs/category_cubit/category_cubit.dart';
import 'package:multivendor_test/features/landing/data/data_sources/local/banner_data_source.dart';
import 'package:multivendor_test/features/landing/data/data_sources/local/banner_data_source_impl.dart';
import 'package:multivendor_test/features/landing/data/repository/banner_repository_impl.dart';
import 'package:multivendor_test/features/landing/domain/repository/banner_repository.dart';
import 'package:multivendor_test/features/landing/domain/use_cases/get_all_banner_data_usecase.dart';
import 'package:multivendor_test/features/landing/presentation/blocs/banner_cubit/banner_cubit.dart';
import 'package:multivendor_test/features/products/data/data_sources/product_data_source.dart';
import 'package:multivendor_test/features/products/data/data_sources/product_data_source_impl.dart';
import 'package:multivendor_test/features/products/data/repository/produt_repository_impl.dart';
import 'package:multivendor_test/features/products/domain/repository/product_repository.dart';
import 'package:multivendor_test/features/products/domain/use_cases/get_all_product_usecase.dart';
import 'package:multivendor_test/features/products/presentation/blocs/product_cubit/product_cubit.dart';

final injector = GetIt.instance;

Future<void> injectDependencies() async {
  injector.registerLazySingleton<CategoryDataSource>(
      () => CategoryDataSourceImpl());

  injector
      .registerLazySingleton<BannerDataSource>(() => BannerDataSourceImpl());

  injector
      .registerLazySingleton<ProductDataSource>(() => ProductDataSourceImpl());

  injector.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(categoryDataSource: injector()));

  injector.registerLazySingleton<BannerRepository>(
      () => BannerRepositoryImpl(bannerDataSource: injector()));

  injector.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(productDataSource: injector()));

  injector.registerLazySingleton<GetAllCategoriesUseCase>(
      () => GetAllCategoriesUseCase(categoryRepository: injector()));

  injector.registerLazySingleton<GetAllBannerDataUseCase>(
      () => GetAllBannerDataUseCase(bannerRepository: injector()));

  injector.registerLazySingleton<GetAllProductsUseCase>(
      () => GetAllProductsUseCase(productRepository: injector()));

  injector.registerLazySingleton<CategoryCubit>(
    () => CategoryCubit(
      getAllCategoriesUseCase: injector(),
    ),
  );

  injector.registerLazySingleton<BannerCubit>(
    () => BannerCubit(
      getAllBannerDataUseCase: injector(),
    ),
  );

  injector.registerLazySingleton<ProductCubit>(
    () => ProductCubit(
      getAllProductsUseCase: injector(),
    ),
  );
}
