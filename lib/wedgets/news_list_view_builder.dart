import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/wedgets/news_listview.dart';
import '../services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {


  const NewsListViewBuilder({super.key, required this.category});
  final String category;


  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}


class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futer;
  @override
  void initState() {
    super.initState();
    futer=NewsServices(Dio()).getTopHeadlinesNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:futer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('oops there is an error'),
            );
          }else{
            return SliverToBoxAdapter(
                child: Center(
                child: CircularProgressIndicator()),);
          }
        });
  }
}

