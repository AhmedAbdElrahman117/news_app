import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Bar_Title.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  final String url;
  const WebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(url),
      );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const BarTitle(),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
