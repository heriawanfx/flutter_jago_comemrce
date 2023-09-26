part of 'banner_bloc.dart';

@freezed
class BannerEvent with _$BannerEvent {
  const factory BannerEvent.getBanners() = _GetBanners;
  const factory BannerEvent.setBannerIndex(int index) = _SetBannerIndex;
}
