part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.addToCart(ProductModel product, int quantity) =
      _AddToCart;
  const factory CartEvent.removeToCart(ProductModel product, int quantity) =
      _RemoveToCart;
}
