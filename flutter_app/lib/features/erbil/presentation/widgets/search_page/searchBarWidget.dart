import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none),
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Colors.cyan,
              fontSize: 18,
            ),
            prefixIcon: Container(
              padding: EdgeInsets.only(left: 5, bottom: 5),
              child: Icon(
                Icons.search,
                color: Colors.cyan,
              ),
              width: 18,
            )),
      ),
    );
  }
}
