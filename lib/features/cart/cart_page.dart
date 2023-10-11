import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/utils/custom_themes.dart';
import '../../common/utils/dimensions.dart';
import '../../common/utils/price_ext.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../router/app_router.dart';
import 'presentation/bloc/cart_bloc.dart';
import 'presentation/widgets/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.paddingSizeLarge,
          vertical: Dimensions.paddingSizeDefault,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Center(
                    child: Row(
              children: [
                Text(
                  'Total Price ',
                  style: titilliumSemiBold.copyWith(
                      fontSize: Dimensions.fontSizeDefault),
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const CircularProgressIndicator();
                      },
                      loaded: (products, buyNow) {
                        double totalPrice = 0;
                        for (var element in products) {
                          totalPrice +=
                              element.quantity * element.product.priceDouble;
                        }
                        return Text(
                          '$totalPrice'.formatPrice(),
                          style: titilliumSemiBold.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: Dimensions.fontSizeLarge),
                        );
                      },
                    );
                  },
                ),
              ],
            ))),
            Builder(
              builder: (context) => BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (products, buyNow) {
                      return products.isEmpty
                          ? Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColorLight,
                                borderRadius: BorderRadius.circular(
                                    Dimensions.paddingSizeSmall),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: Dimensions.paddingSizeSmall,
                                      vertical: Dimensions.fontSizeSmall),
                                  child: Text('Checkout',
                                      style: titilliumSemiBold.copyWith(
                                        fontSize: Dimensions.fontSizeDefault,
                                        color: Colors.grey,
                                      )),
                                ),
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                context.goNamed(AppRouter.checkout);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.paddingSizeSmall),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: Dimensions.paddingSizeSmall,
                                        vertical: Dimensions.fontSizeSmall),
                                    child: Text('Checkout',
                                        style: titilliumSemiBold.copyWith(
                                          fontSize: Dimensions.fontSizeDefault,
                                          color: Theme.of(context).cardColor,
                                        )),
                                  ),
                                ),
                              ),
                            );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const CustomAppBar(title: 'Cart'),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {},
                    child: BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return const Center(child: Text('No Data'));
                          },
                          loaded: (products, buyNow) {
                            if (products.isEmpty) {
                              return const Center(child: Text('No Data'));
                            }
                            return ListView.builder(
                              itemCount: products.length,
                              padding: const EdgeInsets.all(0),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: Dimensions.paddingSizeSmall),
                                  child: CartItemWidget(
                                    cartProduct: products[index],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
