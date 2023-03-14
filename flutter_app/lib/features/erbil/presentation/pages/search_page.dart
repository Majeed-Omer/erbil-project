import 'package:flutter/material.dart';

import '../widgets/arrowBackWidget.dart';
import '../widgets/searchBarWidget.dart';
import 'home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Widget itemBuilder(p, n) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Container(
        color: Colors.grey[200],
        child: Column(children: [
          Image.asset(
            p,
            fit: BoxFit.fill,
            width: double.infinity,
            height: 160,
          ),
          Text(
            n,
            style: TextStyle(
                fontSize: 20,
                color: Colors.cyan,
                decoration: TextDecoration.underline),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: ArrowBackWidget(),
            backgroundColor: Colors.grey[200],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Places',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ],
            ),
            elevation: 0.0,
            centerTitle: true,
          ),
          body: ListView(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SearchBar(),
                    ),
                  )),
              Container(
                  height: 500,
                  width: 50,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: GridView.builder(
                    itemCount: 1,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0),
                    itemBuilder: (BuildContext context, int index) {
                      return itemBuilder(images[0], "Abu Shahab");
                    },
                  ))
            ],
          )),
    );
  }
}
