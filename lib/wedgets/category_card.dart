import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/views/category_viewo.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({super.key, required this.categoryy});

  final categoryMod categoryy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return categoryViewo(
              category: categoryy.categoryName,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 14),
        child: Container(
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(categoryy.imageUrl),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              categoryy.categoryName,
              style: TextStyle(
                color: Color(0xffFEF7FF),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
