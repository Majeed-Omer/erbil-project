import 'package:flutter/material.dart';

class RestTabViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget tabBuilder(t, c) {
      return Tab(
          text: t,
          icon: Icon(
            c,
            color: Colors.black,
          ));
    }

    return Container(
      constraints: BoxConstraints(maxHeight: 150.0),
      child: Material(
        color: Colors.white,
        child: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          tabs: [
            tabBuilder("Fine Dining", Icons.food_bank_outlined),
            tabBuilder("Fast Food", Icons.fastfood_outlined),
            tabBuilder("Dount", Icons.cake_outlined),
            tabBuilder("Pastry", Icons.cake_outlined),
            tabBuilder("Middle East", Icons.cake_outlined),
          ],
        ),
      ),
    );
  }
}
