import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/register_page.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/wrapper_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SharedPreferences preferences = await SharedPreferences.getInstance();
  var status = preferences.getBool("isLoggedIn") ?? false;
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: status == true ? WrapperPage() : MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return RegisterPage();
  }
}
