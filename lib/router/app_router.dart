import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/auth/presentation/auth_page.dart';
import '../features/auth/presentation/widgets/login_form.dart';
import '../features/auth/presentation/widgets/register_form.dart';
import '../features/category/presentation/bloc/category_bloc.dart';
import '../features/dashboard/presentation/dashboard_page.dart';
import '../features/home/presentation/home_page.dart';
import '../features/dashboard/presentation/pages/more_page.dart';
import '../features/dashboard/presentation/pages/order_page.dart';
import '../features/product/presentation/bloc/product_bloc.dart';
import '../features/splash/presentation/splash_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root_navigator');
final GlobalKey<NavigatorState> _authNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'auth_navigator');
final GlobalKey<NavigatorState> _dashboardNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'dashboard_navigator');

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashPage(),
    ),
    ShellRoute(
      navigatorKey: _authNavigatorKey,
      builder: (context, state, child) => AuthPage(child: child),
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginForm(),
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) => const RegisterForm(),
        ),
      ],
    ),
    ShellRoute(
      navigatorKey: _dashboardNavigatorKey,
      builder: (context, state, child) => DashboardPage(child: child),
      routes: [
        GoRoute(
          path: '/home',
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
          path: '/order',
          builder: (context, state) => const OrderPage(),
        ),
        GoRoute(
          path: '/more',
          builder: (context, state) => const MorePage(),
        ),
      ],
    ),
  ],
);
