import 'package:flutter/material.dart';

import '../widgets/arrowBackWidget.dart';
import '../widgets/categories_page/bigImageWidget1.dart';
import '../widgets/categories_page/gridViewWidget2.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackWidget(),
        backgroundColor: Colors.grey[200],
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Container(
              width: double.infinity,
              height: 660,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListView(
                  children: [
                    GridViewWidget2(),
                    SizedBox(
                      height: 50,
                    ),
                    BigImageWidget1(),
                    SizedBox(
                      height: 50,
                    ),
                    GridViewWidget2(),
                    SizedBox(
                      height: 50,
                    ),
                    BigImageWidget1()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
