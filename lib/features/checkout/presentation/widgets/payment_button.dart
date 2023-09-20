import 'package:flutter/material.dart';

import '../../../../common/utils/color_resources.dart';
import '../../../../common/utils/dimensions.dart';

class PaymentButton extends StatelessWidget {
  final String image;
  final Function? onTap;
  const PaymentButton({Key? key, required this.image, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeExtraSmall),
        padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: ColorResources.getGrey(context)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
