import 'package:flutter/cupertino.dart';

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/m.gif",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
