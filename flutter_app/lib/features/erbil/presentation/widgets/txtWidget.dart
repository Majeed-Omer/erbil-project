import 'package:flutter/material.dart';

class TxtWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "10 min ago",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          "Salih Yaseen",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
