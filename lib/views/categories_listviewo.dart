import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import '../wedgets/category_card.dart';

class categoriesListViewo extends StatelessWidget {
  const categoriesListViewo({super.key,});
  final List<categoryMod> categoris = const [
    categoryMod(categoryName: 'sports', imageUrl: 'assets/sports.avif'),
    categoryMod(categoryName: 'business', imageUrl: 'assets/business.avif'),
    categoryMod(categoryName: 'Entertaiment', imageUrl: 'assets/entertaiment.avif'),
    categoryMod(categoryName: 'General', imageUrl: 'assets/general.avif'),
    categoryMod(categoryName: 'Health', imageUrl: 'assets/health.avif'),
    categoryMod(categoryName: 'Science', imageUrl: 'assets/science.avif'),
    categoryMod(categoryName: 'Technology', imageUrl: 'assets/technology.jpeg'),

  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: ListView.builder(

        itemCount: categoris.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
      return categoryCard(categoryy: categoris[index]);
    }),
    );}
}
