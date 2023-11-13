import 'package:flutter/material.dart';
import 'package:news_app/component/catogareg.dart/catogery_card.dart';
import 'package:news_app/models/catogery_model.dart.dart';

class Catogery_list extends StatelessWidget {
  const Catogery_list({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catogeries.length,
        itemBuilder: (context, i) {
          return Catogert_card(catogery: catogeries[i]);
        },
      ),
    );
  }
}
