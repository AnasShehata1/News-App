import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/api.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews({required String category}) async {
    String domain = 'https://newsapi.org/v2';
    String apiKey = '7dbee33ac3a74017a3b8d9854e49a84d';
    String url =
        '$domain/top-headlines?apiKey=$apiKey&country=us&category=$category';

    try {
      Map<String, dynamic> jsonData = await
          Api().get(url: url);
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      int length = articles.length;

      for (int i = 0; i < length; i++) {
        ArticleModel articlesModel = ArticleModel.fromJson(articles[i]);
        articlesList.add(articlesModel);
      }

      return articlesList;
    } catch (e) {
      log('error : ${e.toString()}');
      return [];
    }
  }
}
