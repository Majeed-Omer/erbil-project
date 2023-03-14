import 'package:flutter/material.dart';
import '../pages/search_page.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 50), backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return SearchPage();
                  }));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.cyan,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.cyan, fontSize: 18),
                    )
                  ],
                )),
          );
  }
}