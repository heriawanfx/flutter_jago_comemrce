import 'package:flutter/material.dart';
import 'package:flutter_jago_commerce/assets_gen/assets.gen.dart';
import 'package:flutter_jago_commerce/common/utils/color_resources.dart';
import 'package:flutter_jago_commerce/feature/splash/presentation/view/widgets/splash_painter.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      return context.go('/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: ColorResources.getPrimary(context),
          child: CustomPaint(
            painter: SplashPainter(),
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                MyAssets.images.cwbSplash.path,
                height: 250.0,
                fit: BoxFit.scaleDown,
                width: 250.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
