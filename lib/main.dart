import 'package:flutter/material.dart';
import 'package:news_app/Views/Home.dart';
import 'package:news_app/Widgets/Bar_Title.dart';

void main() {
  runApp(
    const News_App(),
  );
}

class News_App extends StatefulWidget {
  const News_App({super.key});

  @override
  State<News_App> createState() => _News_AppState();
}

class _News_AppState extends State<News_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Bar_Title(),
        ),
        body: RefreshIndicator(
            onRefresh: () async {
              await Future.delayed(const Duration(seconds: 2));
              setState(() {
                const Home();
              });
            },
            child: const Home()),
      ),
    );
  }
}
