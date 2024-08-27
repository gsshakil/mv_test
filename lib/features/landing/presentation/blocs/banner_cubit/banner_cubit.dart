import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:multivendor_test/core/api/failure.dart';
import 'package:multivendor_test/features/landing/domain/entities/banner_entity.dart';
import 'package:multivendor_test/features/landing/domain/use_cases/get_all_banner_data_usecase.dart';

part 'banner_state.dart';

class BannerCubit extends Cubit<BannerState> {
  final GetAllBannerDataUseCase getAllBannerDataUseCase;
  BannerCubit({
    required this.getAllBannerDataUseCase,
  }) : super(BannerInitial());

  void getAllBannerData() async {
    emit(BannerLoading());
    final Either<Failure, List<BannerEntity>> result =
        await getAllBannerDataUseCase();

    result.fold(
      (l) => emit(BannerError(error: l.toString())),
      (r) => emit(BannerSuccess(bannerData: r)),
    );
  }
}
