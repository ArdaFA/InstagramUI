import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  UserPosts({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(width: 6),

                  // name
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //three point
              const Icon(
                Icons.more_horiz_outlined,
              ),
            ],
          ),
        ),

        // to separate them
        const SizedBox(
          height: 6,
        ),

        //Post
        Container(
          height: 450,
          color: Colors.grey[400],
        ),

        // to separate them
        const SizedBox(
          height: 6,
        ),

        // there are buttons ( like, comment, share) below the Post
        Row(
          children: const [
            SizedBox(width: 12),
            Icon(Icons.favorite_border),  SizedBox(width: 12),
            Icon(Icons.comment),  SizedBox(width: 12),
            Icon(Icons.send),  SizedBox(width: 270),
            Icon(Icons.bookmark_border_outlined),
          ],
        ),

        // to separate them
        const SizedBox(
          height: 6,
        ),

        // Comments
        Row(
          children: const [
            // to separate them
            SizedBox(
              width: 6,
            ),
            Text('Liked by '),
            Text('Arda',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
            ),
            Text(' and '),
            Text('others...',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 6,
        ),

        // caption
        RichText(
            text: const TextSpan(children: [
              TextSpan(text: 'annen', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' here comes the caption'),
            ]),
          ),



      ],
    );
  }
}
