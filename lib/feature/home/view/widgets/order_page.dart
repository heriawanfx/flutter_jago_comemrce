import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(GoRouterState.of(context).fullPath ?? ''),
    );
  }
}
