import 'package:flutter/material.dart';
import 'package:ui_instagram/pages/account.dart';
import 'package:ui_instagram/pages/home.dart';
import 'package:ui_instagram/pages/reels.dart';
import 'package:ui_instagram/pages/search.dart';
import 'package:ui_instagram/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // to choose one of the thing in bottom bar we've created
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // different pages to navigate to
  final List<Widget> _children = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],

      // the navigation bar at bottom of the screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call_rounded), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_rounded), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'my account'),
        ],
      ),
    );
  }
}
