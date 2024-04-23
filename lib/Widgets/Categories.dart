import 'package:flutter/material.dart';
import 'package:news_app/Items/Category_Item.dart';
import 'package:news_app/Models/Category_Model.dart';

class Categories extends StatelessWidget {
  final List<Category_Model> category = const [
    Category_Model(text: 'Business', image: 'assets/business.avif'),
    Category_Model(text: 'Entertaining', image: 'assets/entertaiment.avif'),
    Category_Model(text: 'Health', image: 'assets/health.avif'),
    Category_Model(text: 'Science', image: 'assets/science.avif'),
    Category_Model(text: 'Sports', image: 'assets/sports.avif'),
    Category_Model(text: 'Technology', image: 'assets/technology.jpeg'),
  ];
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Category_Item(model: category[index]);
        },
      ),
    );
  }
}
