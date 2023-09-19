import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../assets_gen/assets.gen.dart';
import '../../../../common/utils/color_resources.dart';
import '../../../../common/utils/custom_themes.dart';
import '../../../../common/utils/dimensions.dart';
import '../../../../common/utils/price_ext.dart';
import '../../../../common/widgets/rating_bar.dart';
import '../../../../router/app_router.dart';
import '../../data/models/product_model.dart';

class ProductItemWidget extends StatelessWidget {
  final ProductModel product;

  const ProductItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var id = product.id.toString();
        context.go('${AppRouter.products}/$id');
      },
      child: Container(
        height: Dimensions.cardHeight,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).highlightColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
            )
          ],
        ),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Product Image
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: ColorResources.getIconBg(context),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: FadeInImage.assetNetwork(
                    placeholder: MyAssets.images.placeholder1x1.path,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width / 2.45,
                    image: product.image_url ?? '',
                    imageErrorBuilder: (c, o, s) => Image.asset(
                      MyAssets.images.placeholder1x1.path,
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.width / 2.45,
                    ),
                  ),
                ),
              ),

              // Product Details
              Padding(
                padding: const EdgeInsets.only(
                  top: Dimensions.paddingSizeSmall,
                  bottom: 5,
                  left: 5,
                  right: 5,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(product.name,
                          textAlign: TextAlign.center,
                          style: robotoRegular.copyWith(
                              fontSize: Dimensions.fontSizeSmall,
                              fontWeight: FontWeight.w400),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(height: Dimensions.paddingSizeExtraSmall),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar(
                            rating: double.parse('10.0'),
                            size: 18,
                          ),
                          Text(
                            '(20)',
                            style: robotoRegular.copyWith(
                              fontSize: Dimensions.fontSizeSmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: Dimensions.paddingSizeExtraSmall),
                      const SizedBox.shrink(),
                      const SizedBox(height: 2),
                      Text(
                        product.price.formatPrice(),
                        style: titilliumSemiBold.copyWith(
                          color: ColorResources.getPrimary(context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Off

          const SizedBox.shrink(),
        ]),
      ),
    );
  }
}
