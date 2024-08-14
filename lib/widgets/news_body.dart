
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoriesListView(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const NewsListViewBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
