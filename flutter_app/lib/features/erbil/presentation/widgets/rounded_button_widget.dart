import 'package:flutter/material.dart';

class roundedWbuttonWidget extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;

  const roundedWbuttonWidget(
      {Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Material(
      elevation: 5,
      color: Colors.cyan,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        onPressed: () {
          onBtnPressed();
        },
        minWidth: double.infinity,
        height: (h * 0.09) - 10,
        child: Text(
          btnText,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
