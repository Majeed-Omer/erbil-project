import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    Widget itemBuilder2(p, n, m) {
      if (n == "More") {
        return GestureDetector(
          onTap: () {},
          child: Stack(children: [
            Container(
              width: 180,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
            ),
            Positioned(
              left: 80,
              top: 100,
              child: Text(
                n,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        );
      }
      return InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: 200,
            color: Colors.transparent,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                p,
                fit: BoxFit.fill,
                height: 200,
              ),
              Text(
                n,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              Text(
                m,
                style: TextStyle(fontSize: 15, color: Colors.cyan),
              ),
            ]),
          ),
        ),
      );
    }

    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          itemBuilder2("assets/n.jpg", "Bexal", "Erbil, Rwandz"),
          SizedBox(
            width: 10,
          ),
          itemBuilder2("assets/n.jpg", "Safin", "Erbil, Shaqlawa"),
          SizedBox(
            width: 10,
          ),
          itemBuilder2("assets/n.jpg", "Zorgvan", "Erbil, Barzan"),
          SizedBox(
            width: 10,
          ),
          itemBuilder2("", "More", ""),
        ],
      ),
    );
  }
}
