import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'di/injector.dart';
import 'main_observer.dart';

import 'main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injector().initialize();
  Bloc.observer = MainObserver();
  runApp(const MainApp());
}
