import 'package:flutter/material.dart';
import 'package:flutter_jago_commerce/common/utils/light_themes.dart';
import 'package:flutter_jago_commerce/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: myThemeData,
    );
  }
}
