import 'package:flutter/material.dart';

class BigImageWidget1 extends StatelessWidget {
  const BigImageWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              "assets/e.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Up to 50% Discount",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Read More",
                        style: TextStyle(color: Colors.black),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
