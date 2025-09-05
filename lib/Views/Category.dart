import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Bar_Title.dart';
import 'package:news_app/Widgets/News_Builder.dart';

class Category extends StatelessWidget {
  final String cat;
  const Category({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BarTitle(),
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          News_Builder(
            Category: cat,
          ),
        ],
      ),
    );
  }
}
