part of 'product_cubit.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductError extends ProductState {
  final String error;
  const ProductError({required this.error});
}

final class ProductSuccess extends ProductState {
  final List<ProductEntity> products;
  const ProductSuccess({required this.products});
}
