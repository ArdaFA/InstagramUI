import 'package:flutter/material.dart';
import 'package:ui_instagram/utils/bubble_stories.dart';
import 'package:ui_instagram/utils/user_posts.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List people = [
    'Ceren',
    'Philipp',
    'Oliver',
    'Zühlke',
    'Lena',
    'Judy',
    'Joachim',
    'Merkel',
    'Joachim',
    'Paul',
    'Peter',
    'Marcel',
    'Tobias',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
            style: TextStyle(
              color: Colors.black87,
            ),
            ),
            Row(
              children: const [
                Icon(Icons.add,
                  color: Colors.black87,),
                Padding(padding: EdgeInsets.all(5.0)),
                Icon(Icons.favorite,
                  color: Colors.black87,),
                Padding(padding: EdgeInsets.all(5.0)),
                Icon(Icons.share,
                  color: Colors.black87,)
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // STORIES
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
                itemBuilder: (context, index){
              return CircleStories(
                  text: people[index]
              );
            })
          ),

          // Posts
          Expanded(
            child: ListView.builder(itemCount: people.length,itemBuilder: (context, index){
              return UserPosts(name: people[index]);
            }),
          ),

        ],
      )
    );
  }
}
