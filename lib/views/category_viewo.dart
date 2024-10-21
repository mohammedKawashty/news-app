import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/wedgets/news_list_view_builder.dart';

class categoryViewo extends StatelessWidget {
  const categoryViewo({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category:category ,
          ),
        ],
      ),
    );
  }
}
