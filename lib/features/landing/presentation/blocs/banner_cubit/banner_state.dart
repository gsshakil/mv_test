part of 'banner_cubit.dart';

sealed class BannerState extends Equatable {
  const BannerState();

  @override
  List<Object> get props => [];
}

final class BannerInitial extends BannerState {}

final class BannerLoading extends BannerState {}

final class BannerError extends BannerState {
  final String error;
  const BannerError({required this.error});
}

final class BannerSuccess extends BannerState {
  final List<BannerEntity> bannerData;
  const BannerSuccess({required this.bannerData});
}
