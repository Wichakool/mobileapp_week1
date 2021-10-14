import 'package:flutter/material.dart';
import 'package:mobileapp_week1/config/constant.dart';
import 'package:mobileapp_week1/screen/dashboard.dart';
import 'package:mobileapp_week1/screen/login.dart';
import 'package:mobileapp_week1/screen/packageImage.dart';
import 'package:mobileapp_week1/screen/packageLoacation.dart';
import 'package:mobileapp_week1/screen/packageVideo.dart';
import 'package:mobileapp_week1/screen/register.dart';
import 'screen/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register(),
        'Dashboard': (context) => Dashboard(),
        'Video':(context) => PackageVideo(),
        'Image':(context) => PackageImage(),
        'Location':(context) => PackageLocation(),
      },
      theme: ThemeData(
        primaryColor: sColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
