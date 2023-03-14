import 'package:flutter/material.dart';

import '../widgets/arrowBackWidget.dart';
import '../widgets/callButtonWidget.dart';
import '../widgets/panelWidget1.dart';
import '../widgets/rowButtonFineWidget.dart';
import '../widgets/underLinetxtWidget.dart';

class FineDiningPage extends StatefulWidget {
  const FineDiningPage({super.key});

  @override
  State<FineDiningPage> createState() => _FineDiningPageState();
}

class _FineDiningPageState extends State<FineDiningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackWidget(),
        backgroundColor: Colors.grey[200],
        title: Text(
          'Fine Dining',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          PanelWidget1(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Abu Shahab",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    RowButtonFineWidget(),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                    ),
                    Text(
                      "  Erbil, 40M opposite Gulan\nTower",
                      style: TextStyle(color: Colors.cyan),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    underLinetxtWidget(
                      t: "Fine Dining",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    underLinetxtWidget(
                      t: "Grills",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    underLinetxtWidget(
                      t: "Middle Eastern",
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    underLinetxtWidget(
                      t: "Fish",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    underLinetxtWidget(
                      t: "Drink",
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Text(
                    "Text messaging,electronic messages, typically consisting of alphabetic and numeric characters, between two or more users of mobile devices, desktops/laptops, or\nanother type of compatible computer. Text messages may be sent over a cellular network, or may also be sent via satellite or Internet connection. business and\nsocial purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s,\nthe sending of short informal messages became an accepted part of many cultures, as happened earlier with emailing.[1] This makes texting a quick and easy way to communicate with friends, family and colleagues, including\nin contexts where a call would be impolite or inappropriate (e.g., calling very late at night or when one knows the other person is busy with family or work activities). Like e-mail and voicemail and unlike calls (in which the caller hopes to speak directly with the recipient),\ntexting does not require the caller and recipient to both be free at the same moment; this permits\ncommunication even between busy individuals. Text messages can also be used to interact with automated systems, for example, to\norder products or services from e-commerce websites, or to participate in online contests. Advertisers and\nservice providers use direct text marketing to send messages to mobile users about promotions, payment due dates,\nand other notifications"),
                CallButtonWidget(),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\nLocation On Map",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/m.gif"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
