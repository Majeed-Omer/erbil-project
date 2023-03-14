import 'package:flutter/material.dart';

import '../widgets/bigImageWidget.dart';
import '../widgets/gridViewWidget.dart';
import '../widgets/gridViewWidget1.dart';
import '../widgets/listViewWidget.dart';
import '../widgets/panelWidget.dart';
import '../widgets/searchButtonWidget.dart';

List<String> images = [
  "assets/m.jpg",
  "assets/m.jpg",
  "assets/m.jpg",
  "assets/m.jpg",
  "assets/m.jpg",
  "assets/m.jpg",
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget txtBuilder(s) {
      return Text(
        s,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      );
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          toolbarHeight: 70,
          title: SearchButtonWidget(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Stack(children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.cyan,
                  ),
                  Positioned(
                      left: 14,
                      child: Icon(
                        Icons.brightness_1,
                        color: Colors.yellow,
                        size: 9,
                      ))
                ]))
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            shrinkWrap: true,
            children: [
              PanelWidget(),
              SizedBox(
                height: 15,
              ),
              txtBuilder("Categories"),
              GridViewWidget(),
              SizedBox(
                height: 10,
              ),
              txtBuilder("Sights"),
              SizedBox(
                height: 10,
              ),
              ListViewWidget(),
              SizedBox(
                height: 10,
              ),
              BigImageWidget(),
              SizedBox(
                height: 10,
              ),
              txtBuilder("Places to go"),
              SizedBox(
                height: 10,
              ),
              GridViewWidget1()
            ],
          ),
        ));
  }
}
