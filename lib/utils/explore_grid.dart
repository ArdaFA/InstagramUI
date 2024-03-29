import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 989,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 ),
        itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(1.96),
          child: Container(
            color: Colors.blueGrey[300],
          ),
        );
        });
  }
}
