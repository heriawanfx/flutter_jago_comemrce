import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/di/injector.dart';
import 'package:flutter_jago_commerce/main_observer.dart';

import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector().initialize();
  Bloc.observer = MainObserver();
  runApp(const MainApp());
}
