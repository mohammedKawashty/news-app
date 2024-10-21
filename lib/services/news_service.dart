import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlinesNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=31fdb8d0d8924e7f81eb0cd5c6c17d1c&categoryc=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return[];
    }
  }
}