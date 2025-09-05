import 'package:flutter/material.dart';
import 'package:news_app/Items/bottom_bar.dart';
import 'package:news_app/Widgets/Categories.dart';
import 'package:news_app/Widgets/News_Builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: Categories(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        News_Builder(
          Category: 'general',
        ),
        SliverToBoxAdapter(
          child: BottomBar(),
        ),
      ],
    );
  }
}
