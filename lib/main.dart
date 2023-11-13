import 'package:flutter/material.dart';
import 'package:news_app/component/catogareg.dart/catogery_list.dart';
import 'package:news_app/component/logo.dart';
import 'package:news_app/component/news/new_lists_builder.dart';

void main() {
  runApp(const SafeArea(child: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: logo()),
            SliverToBoxAdapter(child: Catogery_list()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            News_list_builder(category: "general"),
          ],
        ),
      )),
    );
  }
}
