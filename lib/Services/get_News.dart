import 'package:dio/dio.dart';
import 'package:news_app/Models/News_Model.dart';

class get_News {
  Future<List<News_Model>> get_Articles(String category) async {
    final dio = Dio();
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=b2b9c7a771804544bb11189ecbf38d27&category=$category');
    Map<String, dynamic> res = response.data;
    List articles = res['articles'];
    List<News_Model> x = [];
    for (int i = 0; i < articles.length; i++) {
      x.add(
        News_Model(
          image: articles[i]['urlToImage'],
          text: articles[i]['title'],
          describtion: articles[i]['description'],
          url: articles[i]['url'],
        ),
      );
    }
    return x;
  }
}


//condition to filter news
// if (articles[i]['title'] != '[Removed]' &&
//           articles[i]['urlToImage'] != null &&
//           articles[i]['description'] != null &&
//           articles[i]['url'] != null) {}