import 'package:flutter/material.dart';

class ItemAboutWidget extends StatelessWidget {
  final icon;
  final String t;

  ItemAboutWidget({required this.icon, required this.t});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Container(
        color: Colors.cyan,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            size: 70,
            color: Colors.white,
          ),
          Text(
            t,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
