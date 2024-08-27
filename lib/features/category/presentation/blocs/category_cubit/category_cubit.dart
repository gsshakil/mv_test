import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/category/domain/entities/category_entity.dart';
import 'package:multivendor_test/features/category/domain/use_cases/get_all_category_usecase.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final GetAllCategoriesUseCase getAllCategoriesUseCase;

  CategoryCubit({required this.getAllCategoriesUseCase})
      : super(CategoryInitial());

  void getAllCategories() async {
    emit(CategoryLoading());
    final Either<Failure, List<CategoryEntity>> result =
        await getAllCategoriesUseCase();

    result.fold(
      (l) => emit(CategoryError(error: l.toString())),
      (r) => emit(CategorySuccess(categories: r)),
    );
  }
}
