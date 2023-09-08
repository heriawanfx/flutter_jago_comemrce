import 'package:flutter/material.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/auth_page.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/widgets/login_form.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/widgets/register_form.dart';
import 'package:flutter_jago_commerce/feature/home/view/home_page.dart';
import 'package:flutter_jago_commerce/feature/home/view/widgets/dashboard_page.dart';
import 'package:flutter_jago_commerce/feature/home/view/widgets/more_page.dart';
import 'package:flutter_jago_commerce/feature/home/view/widgets/order_page.dart';
import 'package:flutter_jago_commerce/feature/splash/presentation/view/splash_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root_navigator');
final GlobalKey<NavigatorState> _authNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'auth_navigator');
final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'home_navigator');

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
      navigatorKey: _homeNavigatorKey,
      builder: (context, state, child) => HomePage(child: child),
      routes: [
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardPage(),
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
