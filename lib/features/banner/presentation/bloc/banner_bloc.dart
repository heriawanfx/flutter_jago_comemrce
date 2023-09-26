import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/banner_model.dart';
import '../../domain/repositories/banner_repository.dart';

part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  BannerRepository bannerRepository;

  BannerBloc({required this.bannerRepository}) : super(const _StateLoaded([])) {
    on<_GetBanners>((event, emit) async {
      emit(const _StateLoading());
      final result = await bannerRepository.getBanners();
      result.fold((message) {
        emit(_StateError(message));
      }, (data) {
        emit(_StateLoaded(data));
      });
    });
    on<_SetBannerIndex>(
      (event, emit) {
        final loadedState = state as _StateLoaded;
        emit(_StateLoaded(loadedState.data, activeIndex: event.index));
      },
    );
  }
}
