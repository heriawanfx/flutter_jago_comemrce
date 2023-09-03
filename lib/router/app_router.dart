import 'package:flutter/material.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/auth_page.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/widgets/login_form.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/widgets/register_form.dart';
import 'package:flutter_jago_commerce/feature/splash/presentation/view/splash_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _authNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'auth');

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
          ])
    ]);
