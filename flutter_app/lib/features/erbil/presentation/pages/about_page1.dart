import 'package:flutter/material.dart';

import '../widgets/iconButtonsWidget.dart';
import '../widgets/itemAboutWidget.dart';

class AboutPage1 extends StatefulWidget {
  @override
  _AboutPage1State createState() => _AboutPage1State();
}

class _AboutPage1State extends State<AboutPage1> {
  @override
  Widget build(BuildContext context) {
    List<String> names2 = [
      "About Hi Erbil",
      "Settings",
      "Privacy and Policy",
    ];
    List icons = [
      Icons.help_outline,
      Icons.settings_outlined,
      Icons.privacy_tip,
    ];

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
          height: 800,
          color: Colors.white,
          child: ListView(
            children: [
              Image.asset(
                "assets/erbil.webp",
                height: 150,
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  height: 400,
                  width: 50,
                  child: GridView.builder(
                    itemCount: 3,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0),
                    itemBuilder: (BuildContext context, int index) {
                      return ItemAboutWidget(
                        icon: icons[index],
                        t: names2[index],
                      );
                    },
                  )),
              Divider(
                color: Colors.grey,
              ),
              IconButtonsWidget(),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                "Version 1.0 2023",
                style: TextStyle(color: Colors.grey),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
