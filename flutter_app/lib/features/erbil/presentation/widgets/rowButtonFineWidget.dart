import 'package:flutter/material.dart';

class RowButtonFineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
      ],
    );
  }
}
