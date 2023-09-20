// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

import '../../../../common/utils/show_custom_snakbar.dart';
import '../../../../router/app_router.dart';

class PaymentWeb extends StatefulWidget {
  final String payment_url;
  const PaymentWeb({super.key, required this.payment_url});

  @override
  State<PaymentWeb> createState() => _PaymentWebState();
}

class _PaymentWebState extends State<PaymentWeb> {
  late PlatformWebViewController _controller;
  late double _progress;

  @override
  void initState() {
    _controller = PlatformWebViewController(
      const PlatformWebViewControllerCreationParams(),
    )
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setPlatformNavigationDelegate(
        PlatformNavigationDelegate(
            const PlatformNavigationDelegateCreationParams())
          ..setOnProgress((progress) {
            _progress = progress / 100;
          })
          ..setOnPageStarted((url) {
            if (url.contains('status_code=202&transaction_status=deny')) {
              context.pushNamed(AppRouter.paymentFailed);
            }
            if (url.contains('status_code=200&transaction_status=settlement')) {
              context.pushNamed(AppRouter.paymentSuccess);
            }
          })
          ..setOnNavigationRequest((navigationRequest) {
            if (navigationRequest.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          })
          ..setOnWebResourceError((error) {
            showCustomSnackBar(error.description, context);
          }),
      )
      ..loadRequest(
        LoadRequestParams(
          uri: Uri.parse('https://flutter.dev'),
        ),
      );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6.0),
          child: LinearProgressIndicator(value: _progress),
        ),
      ),
      body: PlatformWebViewWidget(
        PlatformWebViewWidgetCreationParams(controller: _controller),
      ).build(context),
    );
  }
}
