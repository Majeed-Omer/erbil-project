import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  final String image;
  final String name;
  const PostsWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
            height: 250,
            width: double.infinity,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            name,
            style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                decoration: TextDecoration.underline),
          ),
        )
      ]),
    );
  }
}
