import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../assets_gen/assets.gen.dart';
import '../../../common/utils/color_resources.dart';
import '../../../common/utils/custom_themes.dart';
import '../../../common/utils/dimensions.dart';
import '../../../common/utils/price_ext.dart';
import '../../../common/utils/show_custom_snakbar.dart';
import '../../../router/app_router.dart';
import '../../cart/presentation/bloc/cart_bloc.dart';
import '../../order/data/models/order_item_model.dart';
import '../../order/data/models/requests/order_request_model.dart';
import '../../order/presentation/bloc/order_bloc.dart';
import 'widgets/amount_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final TextEditingController _shoppingAddress = TextEditingController();
  double subPrice = 0;
  double totalPrice = 0;
  List<OrderItemModel> items = [];
  double shippingCost = 22000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const CircularProgressIndicator();
            },
            loaded: (products, buyNow) {
              items = products
                  .map((e) =>
                      OrderItemModel(id: e.product.id, quantity: e.quantity))
                  .toList();
              for (var element in products) {
                subPrice += element.quantity * element.product.priceDouble;
              }
              totalPrice = subPrice + shippingCost;
              return ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Text(
                      'Shipping Address',
                      style: robotoBold.copyWith(
                          fontSize: Dimensions.fontSizeLarge),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                    child: TextField(
                      controller: _shoppingAddress,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeDefault),
                    child: Text(
                      'Order Detail',
                      style: robotoBold.copyWith(
                          fontSize: Dimensions.fontSizeLarge),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (ctx, index) {
                      final cartProduct = products[index];
                      return Padding(
                        padding:
                            const EdgeInsets.all(Dimensions.paddingSizeDefault),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: .5,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.25)),
                                borderRadius: BorderRadius.circular(
                                    Dimensions.paddingSizeExtraExtraSmall),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    Dimensions.paddingSizeExtraExtraSmall),
                                child: FadeInImage.assetNetwork(
                                  placeholder:
                                      MyAssets.images.placeholder1x1.path,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                  image:
                                      'https://picsum.photos/10${cartProduct.product.id}',
                                  imageErrorBuilder: (c, o, s) => Image.asset(
                                      MyAssets.images.placeholder1x1.path,
                                      fit: BoxFit.cover,
                                      width: 50,
                                      height: 50),
                                ),
                              ),
                            ),
                            const SizedBox(width: Dimensions.marginSizeDefault),
                            Expanded(
                              flex: 3,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            cartProduct.product.name,
                                            style: titilliumRegular.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeDefault,
                                                color:
                                                    ColorResources.getPrimary(
                                                        context)),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: Dimensions.paddingSizeSmall,
                                        ),
                                        Text(
                                          '${cartProduct.product.priceDouble * cartProduct.quantity}'
                                              .formatPrice(),
                                          style: titilliumSemiBold.copyWith(
                                              fontSize:
                                                  Dimensions.fontSizeLarge),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                        height:
                                            Dimensions.marginSizeExtraSmall),
                                    Row(children: [
                                      Text('Qty -  ${cartProduct.quantity}',
                                          style: titilliumRegular.copyWith()),
                                    ]),
                                  ]),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.055),
                    ),
                    child: Center(
                        child: Text(
                      'Order Summary',
                      style: titilliumSemiBold.copyWith(
                          fontSize: Dimensions.fontSizeLarge),
                    )),
                  ),
                  // Total bill
                  Container(
                    margin:
                        const EdgeInsets.only(top: Dimensions.paddingSizeSmall),
                    padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
                    color: Theme.of(context).highlightColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AmountWidget(
                            title: 'Sub Total :',
                            amount: '$subPrice'.formatPrice()),
                        AmountWidget(
                            title: 'Shipping Cost: ',
                            amount: '$shippingCost'.formatPrice()),
                        Divider(height: 5, color: Theme.of(context).hintColor),
                        AmountWidget(
                            title: 'Total :',
                            amount: '$totalPrice'.formatPrice()),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (message) {
              showCustomSnackBar(message, context);
            },
            loaded: (model) {
              final queryMap = {'payment_url': model.payment_url};
              context.goNamed(AppRouter.payment, queryParameters: queryMap);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return InkWell(
                onTap: () {
                  final requestModel = OrderRequestModel(
                    items: items,
                    total_price: totalPrice,
                    delivery_address: _shoppingAddress.text,
                    seller_id: 4,
                  );
                  context
                      .read<OrderBloc>()
                      .add(OrderEvent.submitOrder(requestModel));
                },
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeLarge,
                      vertical: Dimensions.paddingSizeDefault),
                  decoration: BoxDecoration(
                    color: ColorResources.getPrimary(context),
                  ),
                  child: Center(
                      child: Builder(
                    builder: (context) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 2.9),
                      child: Text('Proceed',
                          style: titilliumSemiBold.copyWith(
                            fontSize: Dimensions.fontSizeExtraLarge,
                            color: Theme.of(context).cardColor,
                          )),
                    ),
                  )),
                ),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            // error: (message) {
            //   return Text(message);
            // },
          );
        },
      ),
    );
  }
}
