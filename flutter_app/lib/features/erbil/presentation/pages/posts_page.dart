import 'package:flutter/material.dart';

import '../widgets/listPostViewWidget.dart';
import '../widgets/tabBarWidget1.dart';

class PostsPage extends StatefulWidget {
  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text(
            'Posts',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              TabBarWidget1(),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: [
                      ListPostViewWidget(),
                      ListPostViewWidget(),
                      ListPostViewWidget(),
                      ListPostViewWidget(),
                      ListPostViewWidget(),
                      ListPostViewWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
