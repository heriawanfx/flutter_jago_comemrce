import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'common/utils/light_themes.dart';
import 'di/injector.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/banner/presentation/bloc/banner_bloc.dart';
import 'features/cart/presentation/bloc/cart_bloc.dart';
import 'features/category/presentation/bloc/category_bloc.dart';
import 'features/order/presentation/bloc/order_bloc.dart';
import 'features/product/presentation/bloc/product_bloc.dart';
import 'router/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) {
          return AuthBloc(authRepository: getInstance())
            ..add(const AuthEvent.loadAuthSession());
        }),
        BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(categoryRepository: getInstance()),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => ProductBloc(productRepository: getInstance()),
        ),
        BlocProvider<OrderBloc>(
          create: (context) => OrderBloc(orderRpository: getInstance()),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(),
        ),
        BlocProvider<BannerBloc>(
          create: (context) => BannerBloc(bannerRepository: getInstance()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: myThemeData,
      ),
    );
  }
}
