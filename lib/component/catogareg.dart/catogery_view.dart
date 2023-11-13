import 'package:flutter/material.dart';
import 'package:news_app/component/news/new_lists_builder.dart';

class Catogery_view extends StatelessWidget {
  const Catogery_view({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [News_list_builder(category: category)],
      ),
    );
  }
}
