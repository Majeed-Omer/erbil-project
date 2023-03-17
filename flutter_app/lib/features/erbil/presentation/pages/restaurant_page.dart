import 'package:flutter/material.dart';

import '../widgets/arrowBackWidget.dart';
import '../widgets/restaurant_page/gridViewWidget3.dart';
import '../widgets/restaurant_page/restTabViewWidget.dart';

class RestaurantPage extends StatefulWidget {
  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: ArrowBackWidget(),
          backgroundColor: Colors.grey[200],
          title: Text(
            'Restaurant',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: Column(
              children: <Widget>[
                RestTabViewWidget(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBarView(
                      children: [
                        GridViewWidget3(),
                        GridViewWidget3(),
                        GridViewWidget3(),
                        GridViewWidget3(),
                        GridViewWidget3(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
