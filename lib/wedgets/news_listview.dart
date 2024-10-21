import 'package:flutter/cupertino.dart';

import '../models/article_model.dart';
import 'news_tile.dart';

class newsListView extends StatelessWidget {
  const newsListView({super.key,required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: newsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}

