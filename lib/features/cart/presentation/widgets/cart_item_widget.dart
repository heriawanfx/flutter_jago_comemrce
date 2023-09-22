import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../assets_gen/assets.gen.dart';
import '../../../../common/utils/color_resources.dart';
import '../../../../common/utils/custom_themes.dart';
import '../../../../common/utils/dimensions.dart';
import '../../../../common/utils/price_ext.dart';
import '../../../../router/app_router.dart';
import '../../domain/models/cart_product.dart';

class CartItemWidget extends StatelessWidget {
  final CartProduct cartProduct;

  const CartItemWidget({super.key, required this.cartProduct});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var id = cartProduct.product.id.toString();
        context.goNamed(AppRouter.product, pathParameters: {'id': id});
      },
      child: Container(
        margin: const EdgeInsets.only(top: Dimensions.paddingSizeSmall),
        padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
        decoration: BoxDecoration(
          color: Theme.of(context).highlightColor,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
                  border: Border.all(
                    color: Theme.of(context).primaryColor.withOpacity(.20),
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
                  child: FadeInImage.assetNetwork(
                    placeholder: MyAssets.images.placeholder1x1.path,
                    height: 60,
                    width: 60,
                    image: cartProduct.product.image_url ?? '',
                    imageErrorBuilder: (c, o, s) => Image.asset(
                      MyAssets.images.placeholder1x1.path,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSizeExtraSmall),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              cartProduct.product.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: titilliumBold.copyWith(
                                fontSize: Dimensions.fontSizeDefault,
                                color: ColorResources.getReviewRattingColor(
                                  context,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: Dimensions.paddingSizeSmall,
                          ),
                          IconButton.outlined(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline),
                          )
                        ],
                      ),
                      const SizedBox(height: Dimensions.paddingSizeSmall),
                      Row(
                        children: [
                          Text(
                            cartProduct.product.price.formatPrice(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: titilliumRegular.copyWith(
                              color: ColorResources.getPrimary(context),
                              fontSize: Dimensions.fontSizeExtraLarge,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(' x ${cartProduct.quantity}'),
                        ],
                      ),
                      const SizedBox(width: Dimensions.paddingSizeSmall),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
