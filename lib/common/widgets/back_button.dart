import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackButton extends StatelessWidget {
  final Color color;

  const BackButton(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (context.canPop()) {
          context.pop();
        }
      },
      icon: Icon(Icons.arrow_back_ios, color: color, size: 16),
    );
  }
}
