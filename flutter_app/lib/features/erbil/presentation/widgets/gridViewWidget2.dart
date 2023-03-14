import 'package:flutter/material.dart';

class GridViewWidget2 extends StatelessWidget {
  const GridViewWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
      "assets/m.jpg",
    ];
    List<String> names = [
      "Restaurants",
      "Malls",
      "Real Estate",
      "Mechanic",
      "Hospital",
      "Historic",
      "Closing",
      "Home Appliances",
      "Cars Retail",
    ];
    Widget itemBuilder(p, n) {
      return InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(18),
        splashColor: Colors.blue[900],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Container(
            color: Colors.transparent,
            child: Column(children: [
              Image.asset(
                p,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 100,
              ),
              Text(
                n,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      );
    }

    return Container(
        height: 380,
        width: 50,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
          itemBuilder: (BuildContext context, int index) {
            return itemBuilder(images[index], names[index]);
          },
        ));
  }
}
