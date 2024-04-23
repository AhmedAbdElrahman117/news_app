import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Model.dart';
import 'package:news_app/Views/Category.dart';

class Category_Item extends StatelessWidget {
  final Category_Model model;
  const Category_Item({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xffffffff),
        fixedSize: const Size(100, 100),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              if (model.text == 'Entertaining') {
                return const Category(cat: 'Entertainment');
              } else {
                return Category(cat: model.text.toLowerCase());
              }
            },
          ),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(model.image),
            child: Text(
              model.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
