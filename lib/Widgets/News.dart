import 'package:flutter/material.dart';
import 'package:news_app/Items/News_Item.dart';
import 'package:news_app/Models/News_Model.dart';

// ignore: must_be_immutable
class News extends StatelessWidget {
  List<News_Model> data;
  News({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: data.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: News_Item(
              news: data[index],
            ),
          );
        },
      ),
    );
  }
}
