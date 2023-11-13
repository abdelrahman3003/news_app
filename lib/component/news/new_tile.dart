import 'package:flutter/material.dart';
import 'package:news_app/models/new_model.dart';

class News_tile extends StatelessWidget {
  const News_tile({super.key, required this.article});
  final News_model article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: article.image != null
                      ? NetworkImage(article.image!)
                      : const NetworkImage(
                          "https://www.google.com/imgres?imgurl=https%3A%2F%2Ft4.ftcdn.net%2Fjpg%2F05%2F01%2F89%2F71%2F360_F_501897163_SYpblpOWfRjkP4LHDp033sFItbbcFWWS.jpg&tbnid=5Ry6x22X7ebeqM&vet=12ahUKEwinn_jA7ZWCAxVPoScCHX0zBj8QMygmegUIARDGAQ..i&imgrefurl=https%3A%2F%2Fstock.adobe.com%2Fsearch%3Fk%3Dnull%2Bsymbol&docid=VopKTEEsmnHGmM&w=360&h=360&q=null&ved=2ahUKEwinn_jA7ZWCAxVPoScCHX0zBj8QMygmegUIARDGAQ")),
              color: Colors.grey,
            ),
            height: 180,
            width: double.infinity,
          ),
          Text(
            article.title,
            style: TextStyle(color: Colors.black, fontSize: 20),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            article.subtitle ?? 'NonSubtitle ',
            style: TextStyle(color: Colors.grey, fontSize: 14),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
