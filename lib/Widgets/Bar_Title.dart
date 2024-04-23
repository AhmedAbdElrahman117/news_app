import 'package:flutter/material.dart';

class Bar_Title extends StatelessWidget {
  const Bar_Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Cloud',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ],
    );
  }
}
