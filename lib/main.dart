import 'package:flutter/material.dart';
import 'package:news_app/Views/home.dart';
import 'package:news_app/Widgets/Bar_Title.dart';

void main() {
  runApp(
    const NewsApp(),
  );
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const BarTitle(),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
            setState(() {
              const Home();
            });
          },
          child: const Home(),
        ),
      ),
    );
  }
}
