import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Bar_Title.dart';
import 'package:webview_flutter/webview_flutter.dart';

class web_View extends StatelessWidget {
  final String url;
  const web_View({super.key, required this.url});

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
        title: const Bar_Title(),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
