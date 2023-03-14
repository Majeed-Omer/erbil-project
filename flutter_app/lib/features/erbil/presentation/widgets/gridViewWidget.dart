import 'package:flutter/material.dart';

import '../pages/categories_page.dart';
import '../pages/home_page.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "Restaurants",
      "Malls",
      "Real Estate",
      "Mechanic",
      "Hospital",
      "More",
    ];
    Widget itemBuilder(p, n) {
      if (n == "More") {
        return GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return CategoriesPage();
            }));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(children: [
              Container(
                color: Colors.grey[300],
              ),
              Center(
                child: Text(
                  n,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          ),
        );
      }
      return InkWell(
        onTap: () {},
        child: Container(
          color: Colors.transparent,
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                p,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 100,
              ),
            ),
            Text(
              n,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      );
    }

    return Container(
        height: 260,
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
