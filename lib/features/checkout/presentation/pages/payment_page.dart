// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../router/app_router.dart';

class PaymentPage extends StatefulWidget {
  final String payment_url;
  const PaymentPage({super.key, required this.payment_url});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  late WebViewController _controller;
  late double _progress;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            _progress = progress / 100;
          },
          onPageStarted: (String url) {
            if (url.contains('status_code=202&transaction_status=deny')) {
              context.pushNamed(AppRouter.paymentFailed);
            }
            if (url.contains('status_code=200&transaction_status=settlement')) {
              context.pushNamed(AppRouter.paymentSuccess);
            }
          },
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.payment_url));
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
      body: WebViewWidget(controller: _controller),
    );
  }
}
