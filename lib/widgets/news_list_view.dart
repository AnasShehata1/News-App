import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_tile.dart';

import '../models/article_model.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(articleModel: articles[index]);
        },
      ),
    );
  }
}
