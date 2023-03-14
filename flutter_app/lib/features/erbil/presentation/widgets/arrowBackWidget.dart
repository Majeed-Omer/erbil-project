import 'package:flutter/material.dart';

import '../pages/wrapper_page.dart';

class ArrowBackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60), color: Colors.white),
        ),
        IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return WrapperPage();
            }));
          },
        ),
      ]),
    );
  }
}
