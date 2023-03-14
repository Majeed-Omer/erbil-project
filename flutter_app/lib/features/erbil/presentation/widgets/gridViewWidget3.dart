import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class GridViewWidget3 extends StatefulWidget {
  const GridViewWidget3({super.key});

  @override
  State<GridViewWidget3> createState() => _GridViewWidget3State();
}

class _GridViewWidget3State extends State<GridViewWidget3> {
  @override
  Widget build(BuildContext context) {
    List<String> names2 = [
      "Family Mall",
      "Abu Shahab",
      "Rotana",
      "Top Organic",
      "Bin-Albeiruti",
      "Machko",
    ];
    Widget itemBuilder1(p, n) {
      return Stack(children: [
        Container(
          color: Colors.transparent,
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.asset(
                p,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 150,
              ),
            ),
            Text(
              n,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ]),
        ),
        Positioned(
          left: 140,
          child: IconButton(
            icon: Icon(Icons.favorite_outlined),
            color: Colors.red,
            onPressed: () {
              setState(() {});
            },
          ),
        )
      ]);
    }

    return Container(
        height: 560,
        width: 50,
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
          itemBuilder: (BuildContext context, int index) {
            return itemBuilder1(images[index], names2[index]);
          },
        ));
  }
}
