import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/register_page.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/wrapper_page.dart';

import '../../../../core/Services/auth_services.dart';
import '../../../../core/Services/globals.dart';
import '../widgets/rounded_button_widget.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  loginPressed() async {
    if (_email.isNotEmpty && _password.isNotEmpty) {
      http.Response response = await AuthServices.login(_email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setBool("isLoggedIn", true);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => WrapperPage(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'enter all required fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              color: Colors.cyan,
              width: double.infinity,
              child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                child: Container(
                  height: 536,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 65,
                        ),
                        Material(
                          elevation: 5,
                          shadowColor: Colors.yellow,
                          child: Column(children: [
                            TextField(
                              decoration: const InputDecoration(
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                              ),
                              onChanged: (value) {
                                _email = value;
                              },
                            ),
                            TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              onChanged: (value) {
                                _password = value;
                              },
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        roundedWbuttonWidget(
                          btnText: 'LOG IN',
                          onBtnPressed: () => loginPressed(),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const RegisterPage(),
                                ));
                          },
                          child: const Text(
                            'Create new account',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
              ),
            ),
        ));
  }
}
