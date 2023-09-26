import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/utils/custom_themes.dart';
import '../../../common/utils/dimensions.dart';
import '../../cart/presentation/widgets/bottom_cart_view.dart';
import 'bloc/product_bloc.dart';
import 'widgets/product_image_view.dart';
import 'widgets/product_specification_view.dart';
import 'widgets/product_title_view.dart';

class ProductDetail extends StatefulWidget {
  final String id;

  const ProductDetail({Key? key, required this.id}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
        return true;
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            loadedDetail: (product) {
              return Scaffold(
                appBar: AppBar(
                  title: Row(children: [
                    InkWell(
                      onTap: () => context.pop(),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Theme.of(context).cardColor,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: Dimensions.paddingSizeSmall),
                    Text(
                      'Product Detail',
                      style: robotoRegular.copyWith(
                          fontSize: 20, color: Theme.of(context).cardColor),
                    ),
                  ]),
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                body: RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.getProduct(widget.id));
                  },
                  child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          ProductImageView(
                              image: 'https://picsum.photos/10${product.id}'),
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -25.0, 0.0),
                            padding: const EdgeInsets.only(
                                top: Dimensions.fontSizeDefault),
                            decoration: BoxDecoration(
                              color: Theme.of(context).canvasColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                    Dimensions.paddingSizeExtraLarge),
                                topRight: Radius.circular(
                                    Dimensions.paddingSizeExtraLarge),
                              ),
                            ),
                            child: Column(
                              children: [
                                ProductTitleView(product: product),
                                Container(
                                  height: 250,
                                  margin: const EdgeInsets.only(
                                    top: Dimensions.paddingSizeSmall,
                                  ),
                                  padding: const EdgeInsets.all(
                                    Dimensions.paddingSizeSmall,
                                  ),
                                  child: ProductSpecification(
                                    productSpecification:
                                        product.description ?? '-',
                                  ),
                                ),
                                const SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                bottomNavigationBar: BottomCartView(product: product),
              );
            },
          );
        },
      ),
    );
  }
}
