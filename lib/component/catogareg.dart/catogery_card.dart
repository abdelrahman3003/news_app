import 'package:flutter/material.dart';
import 'package:news_app/component/catogareg.dart/catogery_view.dart';
import 'package:news_app/models/catogery_model.dart.dart';

class Catogert_card extends StatelessWidget {
  const Catogert_card({super.key, required this.catogery});
  final Catogery_model catogery;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 12),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Catogery_view(
                  category: catogery.title,
                );
              },
            ));
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(catogery.image)),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8)),
            height: 85,
            width: 150,
            child: Center(
              child: Text(
                catogery.title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ));
  }
}
