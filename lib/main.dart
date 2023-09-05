import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/common/utils/light_themes.dart';
import 'package:flutter_jago_commerce/di/injector.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_jago_commerce/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector().initialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) {
            return AuthBloc(authRepository: getInstance());
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
