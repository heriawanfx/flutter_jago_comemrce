import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'common/utils/light_themes.dart';
import 'di/injector.dart';
import 'feature/auth/presentation/bloc/auth_bloc.dart';
import 'router/app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) {
            return AuthBloc(authRepository: getInstance())
              ..add(const AuthEvent.loadAuthSession());
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: myThemeData,
      ),
    );
  }
}
