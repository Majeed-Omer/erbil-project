import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class GridViewWidget1 extends StatelessWidget {
  const GridViewWidget1({super.key});

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
      return InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(18),
        splashColor: Colors.blue[900],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Container(
            color: Colors.grey[100],
            child: Column(children: [
              Image.asset(
                p,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 150,
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
        ),
      );
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
