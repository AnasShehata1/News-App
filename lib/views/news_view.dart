import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/custom_appbar.dart';
import 'package:newsapp/widgets/custom_loading_widget.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, right: 10.0, left: 10.0),
        child: Column(
          children: [
            Text(
              article.author,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: article.image != null
                  ? Image.network(
                      article.image!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )
                  : const CustomLoading(),
            ),
            const SizedBox(height: 12),
            Text(
              article.title,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              article.description ?? '',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Published At : ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    article.publishedAt.substring(0, 10),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
