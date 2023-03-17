import 'package:flutter/material.dart';

import '../widgets/map_page/mapWidget.dart';
import '../widgets/map_page/tabBarWidget.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPagePageState();
}

class _MapPagePageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text(
            'Map',
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
                TabBarWidget(),
                Expanded(
                  child: TabBarView(
                    children: [
                      MapWidget(),
                      MapWidget(),
                      MapWidget(),
                      MapWidget(),
                      MapWidget(),
                    ],
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
