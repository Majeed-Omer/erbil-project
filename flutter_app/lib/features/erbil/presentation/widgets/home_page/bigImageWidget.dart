import 'package:flutter/material.dart';

class BigImageWidget extends StatelessWidget {
  const BigImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
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
                "The History of\nErbil Citadel",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Text(
                "Erbil Citadel is the oldest inhabited cites\nin the world with an age of over 5000 years",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
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
    );
  }
}
