import 'package:flutter/material.dart';

import 'iconButtonsWidget.dart';

class ListViewAboutWidget extends StatelessWidget {
  const ListViewAboutWidget({super.key});

  itemBuilder(c, t) {
    return ListTile(
      leading: Icon(c),
      title: Text(t),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 150,
        ),
        itemBuilder(Icons.error_outline, "About Hi Erbil"),
        Divider(
          color: Colors.black,
        ),
        itemBuilder(Icons.settings, "Settings"),
        Divider(
          color: Colors.black,
        ),
        itemBuilder(Icons.privacy_tip, "Privacy and Policy"),
        Divider(
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        ),
        IconButtonsWidget(),
      ],
    );
  }
}
