import 'package:flutter/material.dart';

class underLinetxtWidget extends StatelessWidget {
  final t;
  const underLinetxtWidget({super.key, required this.t});

  @override
  Widget build(BuildContext context) {
    return Text(
      t,
      style:
          TextStyle(color: Colors.grey, decoration: TextDecoration.underline),
    );
  }
}
