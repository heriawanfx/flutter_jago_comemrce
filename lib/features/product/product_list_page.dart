// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../common/utils/color_resources.dart';
import '../../common/utils/dimensions.dart';
import '../../common/widgets/custom_app_bar.dart';
import 'presentation/bloc/product_bloc.dart';
import 'presentation/widgets/product_item_widget.dart';

class ProductListPage extends StatelessWidget {
  final int category_id;
  final String? category_name;

  const ProductListPage({
    Key? key,
    required this.category_id,
    this.category_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.getIconBg(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomAppBar(title: category_name),

          const SizedBox(height: Dimensions.paddingSizeSmall),

          // Products
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
                loaded: (data) {
                  return Expanded(
                    child: MasonryGridView.count(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeSmall),
                      physics: const BouncingScrollPhysics(),
                      crossAxisCount: 2,
                      itemCount: data.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductItemWidget(product: data[index]);
                      },
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
