part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();
  const factory CartState.loading() = _StateLoading;
  const factory CartState.loaded(List<CartProduct> cartProducts,
      {@Default(false) bool? buyNow}) = _StateLoaded;
}
