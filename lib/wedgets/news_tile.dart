import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class newsTile extends StatelessWidget {
  const newsTile({super.key,required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null && articleModel.image!.isNotEmpty
              ? Image.network(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          )
              : Image.asset(
            'assets/default-featured-image.png.jpg', // Change to your asset path
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(articleModel.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8,),
        Text(articleModel.subTitle??'' ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),

      ],
    );
  }
}
