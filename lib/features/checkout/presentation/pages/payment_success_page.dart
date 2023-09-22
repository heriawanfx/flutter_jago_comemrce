import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../router/app_router.dart';

class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.rightSlide,
        title: 'Pembayaran Sukses',
        desc: 'Selamat Pembayaran Berhasil dilakukan',
        btnOkOnPress: () {
          context.goNamed(AppRouter.dashboard);
        },
      ).show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
