import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Models/News_Model.dart';
import 'package:news_app/Services/get_News.dart';
import 'package:news_app/Widgets/News.dart';

class News_Builder extends StatefulWidget {
  final String Category;
  const News_Builder({super.key, required this.Category});

  @override
  State<News_Builder> createState() => _News_BuilderState();
}

class _News_BuilderState extends State<News_Builder> {
  Future<List<News_Model>>? data;

  @override
  void initState() {
    data = get_News().get_Articles(widget.Category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return News(data: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'No Internet Connection',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange),
                  onPressed: () {
                    setState(
                      () {
                        data = get_News().get_Articles(widget.Category);
                      },
                    );
                  },
                  child: const Text(
                    'Try Again',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                )
              ],
            ),
          );
        } else {
          return SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.deepOrange,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
