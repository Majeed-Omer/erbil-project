import 'package:flutter/material.dart';

import '../widgets/listViewAboutWidget.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListViewAboutWidget()),
        ),
      ),
    );
  }
}
