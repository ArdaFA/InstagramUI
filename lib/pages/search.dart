import 'package:flutter/material.dart';

import '../utils/explore_grid.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: const [
                Icon(Icons.search_outlined,
                color: Colors.grey,),
                Center(child: Text('Search', style: TextStyle(
                  color: Colors.grey,
                ),))
              ],

            ),
          ),
        ),
      ),
      body: ExploreGrid(),
    );
  }
}
