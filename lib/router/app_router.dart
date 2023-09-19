import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/auth/presentation/auth_page.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';
import '../features/auth/presentation/widgets/login_form.dart';
import '../features/auth/presentation/widgets/register_form.dart';
import '../features/cart/cart_page.dart';
import '../features/category/presentation/bloc/category_bloc.dart';
import '../features/dashboard/presentation/dashboard_page.dart';
import '../features/home/presentation/home_page.dart';
import '../features/dashboard/presentation/pages/more_page.dart';
import '../features/dashboard/presentation/pages/order_page.dart';
import '../features/product/presentation/bloc/product_bloc.dart';
import '../features/product/presentation/product_detail.dart';
import '../features/product/product_list_page.dart';
import '../features/splash/presentation/splash_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root_navigator');
final GlobalKey<NavigatorState> _authNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'auth_navigator');
final GlobalKey<NavigatorState> _dashboardNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'dashboard_navigator');

class AppRouter {
  const AppRouter._();

  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const root = '/';

  static const home = '/home';
  static const order = '/order';
  static const more = '/more';

  static const products = '/products';
  static const cart = '/cart';
  static const checkout = '/checkout';
}

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRouter.splash,
  debugLogDiagnostics: kDebugMode,
  routes: [
    GoRoute(
      path: AppRouter.splash,
      builder: (context, state) => const SplashPage(),
    ),
    ShellRoute(
      navigatorKey: _authNavigatorKey,
      builder: (context, state, child) => AuthPage(child: child),
      routes: [
        GoRoute(
          path: AppRouter.login,
          builder: (context, state) => const LoginForm(),
        ),
        GoRoute(
          path: AppRouter.register,
          builder: (context, state) => const RegisterForm(),
        ),
      ],
    ),
    GoRoute(
      path: AppRouter.root,
      redirect: (context, state) {
        context.read<AuthBloc>().state.maybeWhen(
            orElse: () => AppRouter.splash,
            loggedIn: (model) {
              return model != null ? AppRouter.home : AppRouter.login;
            });
        return null;
      },
    ),
    ShellRoute(
      navigatorKey: _dashboardNavigatorKey,
      builder: (context, state, child) => DashboardPage(child: child),
      routes: [
        GoRoute(
          path: AppRouter.home,
          builder: (context, state) {
            //Fetch Categories
            context
                .read<CategoryBloc>()
                .add(const CategoryEvent.getCategories());

            //Fetch Products
            context.read<ProductBloc>().add(const ProductEvent.getProducts());

            return const HomePage();
          },
        ),
        GoRoute(
          path: AppRouter.order,
          builder: (context, state) => const OrderPage(),
        ),
        GoRoute(
          path: AppRouter.more,
          builder: (context, state) => const MorePage(),
        ),
      ],
    ),
    GoRoute(
      path: AppRouter.products,
      name: AppRouter.products,
      builder: (context, state) {
        final queryMap = state.uri.queryParameters;
        final categoryId = queryMap['category_id']!;
        final categoryName = queryMap['category_name'];

        //Fetch Product By Category
        context
            .read<ProductBloc>()
            .add(ProductEvent.getProducts(category_id: categoryId));

        return ProductListPage(
          category_id: categoryId,
          category_name: categoryName,
        );
      },
    ),
    GoRoute(
      path: '${AppRouter.products}/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;

        //Fetch Product id
        context.read<ProductBloc>().add(ProductEvent.getProduct(id));

        return ProductDetail(id: id);
      },
    ),
    GoRoute(
      path: AppRouter.cart,
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: AppRouter.checkout,
      builder: (context, state) => Container(),
    ),
  ],
);
