import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/products/domain/entity/product_entity.dart';
import 'package:multivendor_test/features/products/domain/use_cases/get_all_product_usecase.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetAllProductsUseCase getAllProductsUseCase;
  ProductCubit({
    required this.getAllProductsUseCase,
  }) : super(ProductInitial());

  void getAllProducts()async {
     emit(ProductLoading());
    final Either<Failure, List<ProductEntity>> result =
        await getAllProductsUseCase();

    result.fold(
      (l) => emit(ProductError(error: l.toString())),
      (r) => emit(ProductSuccess(products: r)),
    );
  }
}
