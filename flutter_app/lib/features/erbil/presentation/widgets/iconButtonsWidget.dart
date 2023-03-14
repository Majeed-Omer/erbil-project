import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonsWidget extends StatelessWidget {
  const IconButtonsWidget({super.key});

  Widget iconBuilder(c) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          c,
          size: 50,
          color: Colors.cyan,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        iconBuilder(Icons.facebook_outlined),
        iconBuilder(FontAwesomeIcons.instagram),
        iconBuilder(FontAwesomeIcons.youtube),
      ],
    );
  }
}
