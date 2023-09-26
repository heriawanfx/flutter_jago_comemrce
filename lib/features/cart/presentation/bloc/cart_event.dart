part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.addToCart(ProductModel product, int quantity) =
      _AddToCart;
  const factory CartEvent.removeFromCart(ProductModel product, int quantity) =
      _RemoveToCart;
  const factory CartEvent.buyNow(ProductModel product, int quantity) = _BuyNow;
}
