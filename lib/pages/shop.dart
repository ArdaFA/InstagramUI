import 'package:flutter/material.dart';
import 'package:ui_instagram/utils/shop_grid.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: const [
             Text('Shop', style: TextStyle(
              fontWeight: FontWeight.bold,
               color: Colors.black87,
            ),),
            SizedBox(width: 280,),
            Icon(Icons.calendar_month_sharp,
              color: Colors.black87,),
            Icon(Icons.menu_outlined,
              color: Colors.black,),
            SizedBox(height: 20,)
          ],
        ),

      ),
      body: ShopGrid(),
    );
  }
}
