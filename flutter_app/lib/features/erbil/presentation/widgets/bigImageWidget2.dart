import 'package:flutter/cupertino.dart';

class BigImageWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Image.asset("assets/s.jpg"));
  }
}
