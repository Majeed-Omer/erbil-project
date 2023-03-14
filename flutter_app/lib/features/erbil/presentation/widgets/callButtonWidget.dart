import 'package:flutter/material.dart';

class CallButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.call_outlined),
              Text(
                'Call Now',
                style: TextStyle(fontSize: 15.0),
              ),
            ]),
          ),
        ));
  }
}
