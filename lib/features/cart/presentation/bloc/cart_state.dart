part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  //const factory CartState.initial() = _StateInitial;
  const factory CartState.loading() = _StateLoading;
  const factory CartState.loaded(List<CartProduct> cartProducts) = _StateLoaded;
  const factory CartState.buyNow() = _StateBuyNow;
}
