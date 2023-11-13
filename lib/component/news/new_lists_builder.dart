import 'package:flutter/material.dart';
import 'package:news_app/component/news/news_list.dart';
import 'package:news_app/models/new_model.dart';
import 'package:news_app/services/news_service.dart';

class News_list_builder extends StatefulWidget {
  const News_list_builder({super.key, required this.category});
  final String category;
  @override
  State<News_list_builder> createState() => _News_list_builderState();
}

class _News_list_builderState extends State<News_list_builder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = New_sevice().getnews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<News_model>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return News_list(news: snapshot.data!);
        } else if (snapshot.hasError) {
          return const Center(child: Text("error in server"));
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
