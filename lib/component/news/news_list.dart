import 'package:flutter/material.dart';
import 'package:news_app/component/news/new_tile.dart';
import 'package:news_app/models/new_model.dart';

// ignore: must_be_immutable
class News_list extends StatelessWidget {
  News_list({
    super.key,
    required this.news,
  });

  final List<News_model> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: news.length,
            (context, index) {
      return News_tile(
        article: news[index],
      );
    }));
  }
}
