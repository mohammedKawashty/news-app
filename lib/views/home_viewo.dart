import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/categories_listviewo.dart';
import 'package:newsapp/wedgets/news_list_view_builder.dart';


class homeViewo extends StatelessWidget {
  const homeViewo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(

          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: categoriesListViewo(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
