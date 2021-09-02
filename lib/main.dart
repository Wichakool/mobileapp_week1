import 'package:flutter/material.dart';
import 'package:mobileapp_week1/constant.dart';
import 'package:mobileapp_week1/login.dart';

import 'home.dart';
import 'index.dart';
import 'register.dart';
import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Index(),
        routes: {
          'Login': (context) => Login(),
          'Register': (context) => Register()
        },
        theme: ThemeData(
          primaryColor: pColor,
          secondaryHeaderColor: sColor,
        ));
  }
}
