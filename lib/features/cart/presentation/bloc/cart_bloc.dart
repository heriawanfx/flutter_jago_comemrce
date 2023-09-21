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
      if (state is _StateLoaded) {
        final currentState = state as _StateLoaded;

        emit(const _StateLoading());

        final existCartProducts = currentState.cartProducts;

        //Find exist match products
        final needUpdateProducts = existCartProducts.where((e) {
          return e.product == event.product;
        });
        if (needUpdateProducts.isNotEmpty) {
          for (var element in needUpdateProducts) {
            //Increment match product
            element.quantity += event.quantity;
          }

          final updatedCartProducts = currentState.cartProducts;
          emit(_StateLoaded(updatedCartProducts));
        } else {
          final newCartProduct = CartProduct(
            product: event.product,
            quantity: event.quantity,
          );

          //Add new product
          emit(_StateLoaded([...existCartProducts, newCartProduct]));
        }
      }
    });

    on<_BuyNow>((event, emit) {
      emit(const _StateLoading());

      final newCartProduct = CartProduct(
        product: event.product,
        quantity: event.quantity,
      );

      //Add new product
      emit(_StateLoaded([newCartProduct]));

      emit(const _StateBuyNow());
    });
  }
}
