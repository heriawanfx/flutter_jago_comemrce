part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = _StateInitial;
  const factory BannerState.loading() = _StateLoading;
  const factory BannerState.loaded(List<BannerModel> data) = _StateLoaded;
  const factory BannerState.error(String message) = _StateError;
  const factory BannerState.indexChanged(int index) = _StateIndexChanged;
}
