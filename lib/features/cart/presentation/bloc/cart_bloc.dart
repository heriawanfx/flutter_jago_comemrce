import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product/data/models/product_model.dart';
import '../../domain/models/cart_product.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _StateLoaded([])) {
    on<_AddToCart>((event, emit) {
      final cartProduct = CartProduct(
        product: event.product,
        quantity: event.quantity,
      );
      //Push new added product
      emit(_StateLoaded([...state.cartProducts, cartProduct]));
    });
  }
}
