import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 98,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(1.96),
            child: Container(
              color: Colors.lightGreen[100],
            ),
          );
        });
  }
}
