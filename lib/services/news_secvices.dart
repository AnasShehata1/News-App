import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews({required String category}) async {
    String domain = 'https://newsapi.org/v2';
    String apiKey = '7dbee33ac3a74017a3b8d9854e49a84d';
    try {
      Response response = await dio.get(
          '$domain/top-headlines?apiKey=$apiKey&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      // add articles that is have a value
      for (var article in articles) {
        // avoid null article
        if (article['description'] == null ||
            article['urlToImage'] == null ||
            article['author'] == null) {
          continue;
        } else {
          ArticleModel articlesModel = ArticleModel.fromJson(article);
          articlesList.add(articlesModel);
        }
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
