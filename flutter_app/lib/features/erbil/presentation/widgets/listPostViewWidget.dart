import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/features/erbil/presentation/widgets/postsWidget.dart';
import 'package:flutter_application_1/features/erbil/presentation/widgets/txtWidget.dart';

class ListPostViewWidget extends StatelessWidget {
  const ListPostViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      PostsWidget(image: "assets/e.jpg", name: "Difference between UX and UI"),
      SizedBox(
        height: 10,
      ),
      TxtWidget(),
      SizedBox(
        height: 20,
      ),
      PostsWidget(image: "assets/e.jpg", name: "Culture of Erbil"),
      SizedBox(
        height: 10,
      ),
      TxtWidget(),
      SizedBox(
        height: 20,
      ),
      PostsWidget(image: "assets/e.jpg", name: "Erbil Weather Update"),
      SizedBox(
        height: 10,
      ),
      TxtWidget(),
    ]);
  }
}
