import 'package:flutter/material.dart';

class TabBarWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget tabBuilder(t, c) {
      return Tab(
          text: t,
          icon: Icon(
            c,
            color: Colors.black,
          ));
    }

    return Container(
      constraints: BoxConstraints(maxHeight: 150.0),
      child: Material(
        color: Colors.white,
        child: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          tabs: [
            tabBuilder("Latest", Icons.document_scanner),
            tabBuilder("Sports", Icons.sports_outlined),
            tabBuilder("Weather", Icons.cloud_done_outlined),
            tabBuilder("Arts", Icons.art_track_outlined),
            tabBuilder("Tech", Icons.tv),
            tabBuilder("Music", Icons.music_note_outlined),
          ],
        ),
      ),
    );
  }
}
