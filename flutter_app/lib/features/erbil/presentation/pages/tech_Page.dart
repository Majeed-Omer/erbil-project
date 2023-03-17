import 'package:flutter/material.dart';
import '../widgets/arrowBackWidget.dart';
import '../widgets/rowButtonFineWidget.dart';
import '../widgets/tech_page/bigImageWidget2.dart';
import '../widgets/txtWidget.dart';

class TechPage extends StatefulWidget {
  const TechPage({super.key});

  @override
  State<TechPage> createState() => _TechPageState();
}

class _TechPageState extends State<TechPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackWidget(),
        backgroundColor: Colors.grey[200],
        title: Text(
          'Tech',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          BigImageWidget2(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Difference between UI and UX",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  RowButtonFineWidget(),
                ],
              ),
              TxtWidget(),
              SizedBox(
                height: 50,
              ),
              Text(
                  "To be fair, the phone calls are clear and go through just fine. You have to buy minutes, but texts are free. The reason for the 2 starts is that "),
              SizedBox(
                height: 10,
              ),
              Text(
                "Difference between UI and UX",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                  "\nTo be fair, the phone calls are clear and go through just fine. You have to buy minutes, but texts are free. The reason for the 2 starts is that "),
            ]),
          ),
        ],
      ),
    );
  }
}
