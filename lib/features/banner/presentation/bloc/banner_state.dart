part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const BannerState._();

  const factory BannerState.loading() = _StateLoading;

  const factory BannerState.loaded(List<BannerModel> data,
      {@Default(0) int? activeIndex}) = _StateLoaded;
  const factory BannerState.error(String message) = _StateError;
}
