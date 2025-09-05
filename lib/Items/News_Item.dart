import 'package:flutter/material.dart';
import 'package:news_app/Models/News_Model.dart';
import 'package:news_app/Views/web_view.dart';

class News_Item extends StatelessWidget {
  final News_Model news;
  const News_Item({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WebView(
                url: news.url!,
              );
            },
          ),
        );
      },
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {
                    const Icon(Icons.error);
                  },
                  image: NetworkImage(news.image ??
                      'https://www.publicdomainpictures.net/pictures/280000/velka/not-found-image-15383864787lu.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 2),
            child: Text(
              news.text ?? '',
              style: const TextStyle(fontSize: 22, color: Colors.black87),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              news.describtion ?? '',
              style: const TextStyle(fontSize: 16, color: Colors.black54),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
