part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _StateInitial;
  const factory OrderState.loading() = _StateLoading;
  const factory OrderState.loaded(OrderResponseModel model) = _StateLoaded;
  const factory OrderState.error(String message) = _StateError;
}
