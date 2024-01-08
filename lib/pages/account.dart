import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [

              // Profile Picture
              Container(
                height: 99,
                width: 99,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),

              ),

              // number of posts, followers, following
              Column(
                children: const [
                  Text('12'),
                  Text('356'),
                  Text('433'),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}

