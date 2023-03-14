
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/home_page.dart';
import 'package:flutter_application_1/features/erbil/presentation/pages/wrapper_page.dart';

import '../../../../core/Services/auth_services.dart';
import '../../../../core/Services/globals.dart';
import '../widgets/rounded_button_widget.dart';
import 'login_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email = '';
  String _password = '';
  String _name = '';

  createAccountPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    if (emailValid) {
      http.Response response =
          await AuthServices.register(_name, _email, _password);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setBool("isLoggedIn", true);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => WrapperPage()),
            );
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'email not valid');
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
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Welcome",
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
                          height: 70,
                        ),
                        Material(
                          elevation: 5,
                          shadowColor: Colors.yellow,
                          child: Column(children: [
                            TextField(
                              decoration: const InputDecoration(
                                hintText: 'Enter your name',
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                              ),
                              onChanged: (value) {
                                _name = value;
                              },
                            ),
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
                          height: 40,
                        ),
                        roundedWbuttonWidget(
                          btnText: 'Sign up',
                          onBtnPressed: () => 
                          createAccountPressed(),
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
                                      const LoginPage(),
                                ));
                          },
                          child: const Text(
                            'Already have an acount',
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
      )
    );
  }
}
