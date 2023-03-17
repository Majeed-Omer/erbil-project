import 'package:flutter/material.dart';

import '../widgets/restaurant_page/gridViewWidget3.dart';

class WishListPage extends StatefulWidget {
  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text(
            'Wishlist',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: GridViewWidget3(),
              ),
            )),
      ),
    );
  }
}
