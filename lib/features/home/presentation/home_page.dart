import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../assets_gen/assets.gen.dart';
import '../../../common/utils/color_resources.dart';
import '../../../common/utils/custom_themes.dart';
import '../../../common/utils/dimensions.dart';
import '../../../common/widgets/title_row.dart';
import '../../../router/app_router.dart';
import '../../cart/presentation/bloc/cart_bloc.dart';
import '../../category/presentation/widgets/category_widget.dart';
import '../../product/presentation/bloc/product_bloc.dart';
import '../../product/presentation/widgets/product_item_widget.dart';
import 'widgets/banner_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.getHomeBg(context),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 0,
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Image.asset(MyAssets.images.cwbLogo.path, height: 35),
            actions: [
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return Badge.count(
                    count:
                        (state.whenOrNull(loaded: (data) => data.length) ?? 0),
                    offset: const Offset(-4, -4),
                    child: IconButton(
                      onPressed: () => context.go(AppRouter.cart),
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                  );
                },
              ),
            ],
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: SliverDelegate(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.homePagePadding,
                      vertical: Dimensions.paddingSizeSmall),
                  color: ColorResources.getHomeBg(context),
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: Dimensions.homePagePadding,
                      right: Dimensions.paddingSizeExtraSmall,
                      top: Dimensions.paddingSizeExtraSmall,
                      bottom: Dimensions.paddingSizeExtraSmall,
                    ),
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[200]!,
                            spreadRadius: 1,
                            blurRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(
                          Dimensions.paddingSizeExtraSmall),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Search',
                              style: robotoRegular.copyWith(
                                  color: Theme.of(context).hintColor)),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                        Dimensions.paddingSizeExtraSmall))),
                            child: Icon(Icons.search,
                                color: Theme.of(context).cardColor,
                                size: Dimensions.iconSizeSmall),
                          ),
                        ]),
                  ),
                ),
              ))),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  Dimensions.homePagePadding,
                  Dimensions.paddingSizeSmall,
                  Dimensions.paddingSizeDefault,
                  Dimensions.paddingSizeSmall),
              child: Column(
                children: [
                  const BannerWidget(),
                  const SizedBox(height: Dimensions.homePagePadding),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeExtraExtraSmall,
                        vertical: Dimensions.paddingSizeExtraSmall),
                    child: TitleRow(
                      title: 'Categories',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(height: Dimensions.paddingSizeSmall),
                  const Padding(
                    padding:
                        EdgeInsets.only(bottom: Dimensions.homePagePadding),
                    child: CategoryWidget(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeExtraSmall,
                        vertical: Dimensions.paddingSizeExtraSmall),
                    child: Row(children: [
                      Expanded(child: Text('Products', style: titleHeader)),
                    ]),
                  ),
                  const SizedBox(height: Dimensions.homePagePadding),
                ],
              ),
            ),
          ),
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.5 / 2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        childCount: 1,
                      ),
                    ),
                  );
                },
                error: (message) {
                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.5 / 2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Center(
                            child: Text(message),
                          );
                        },
                        childCount: 1,
                      ),
                    ),
                  );
                },
                loaded: (data) {
                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 1.5 / 2,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return ProductItemWidget(product: data[index]);
                        },
                        childCount: data.length,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      )),
    );
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;
  SliverDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 70 ||
        oldDelegate.minExtent != 70 ||
        child != oldDelegate.child;
  }
}
