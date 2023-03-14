// ignore: import_of_legacy_library_into_null_safe
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/posts_page.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/wishList_page.dart';

import 'about_page.dart';
import 'home_page.dart';
import 'map_page.dart';

class WrapperPage extends StatefulWidget {
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  Widget? _child;

  @override
  void initState() {
    _child = HomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      extendBody: true,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                svgPath: "assets/home.svg",
                backgroundColor: Colors.black,
                extras: {"label": "home"}),
            FluidNavBarIcon(
                svgPath: 'assets/posts.svg',
                backgroundColor: Colors.black,
                extras: {"label": "posts"}),
            FluidNavBarIcon(
                svgPath: 'assets/map.svg',
                backgroundColor: Colors.black,
                extras: {"label": "Map"}),
            FluidNavBarIcon(
                svgPath: 'assets/wish.svg',
                backgroundColor: Colors.black,
                extras: {"label": "wishlist"}),
            FluidNavBarIcon(
                svgPath: 'assets/about.svg',
                backgroundColor: Colors.black,
                extras: {"label": "about"}),
          ],
          onChange: _handleNavigationChange,
          style: FluidNavBarStyle(
              iconSelectedForegroundColor: Colors.white,
              iconUnselectedForegroundColor: Colors.white60,
              barBackgroundColor: Colors.cyan),
          scaleFactor: 1.5,
          defaultIndex: 0,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = HomePage();
          break;
        case 1:
          _child = PostsPage();
          break;
        case 2:
          _child = MapPage();
          break;
        case 3:
          _child = WishListPage();
          break;
        case 4:
          _child = AboutPage();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 100),
        child: _child,
      );
    });
  }
}
