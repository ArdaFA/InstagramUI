import 'package:flutter/material.dart';

class CircleStories extends StatelessWidget {
  final String text;
  const CircleStories({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey[300],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      )
    );
  }
}
