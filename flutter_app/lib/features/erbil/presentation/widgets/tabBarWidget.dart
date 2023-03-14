import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
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
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          isScrollable: true,
          tabs: [
            tabBuilder("Restaurant", Icons.food_bank),
            tabBuilder("Real Estate", Icons.build),
            tabBuilder("Cars Retailor", Icons.directions_car),
            tabBuilder("Mall", Icons.local_mall),
            tabBuilder("Hospital", Icons.local_hospital_outlined),
          ],
        ),
      ),
    );
  }
}
