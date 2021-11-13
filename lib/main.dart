import 'package:flutter/material.dart';
import 'package:mobileapp_week1/config/constant.dart';
import 'package:mobileapp_week1/screen/dashboard.dart';
import 'package:mobileapp_week1/screen/firebaselogin.dart';
import 'package:mobileapp_week1/screen/firebaseregister.dart';
import 'package:mobileapp_week1/screen/login.dart';
import 'package:mobileapp_week1/screen/packageImage.dart';
import 'package:mobileapp_week1/screen/packageLoacation.dart';
import 'package:mobileapp_week1/screen/packageVideo.dart';
import 'package:mobileapp_week1/screen/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobileapp_week1/screen/store.dart';
import 'screen/index.dart';

Future<void> main() async {
  // เปิด Connection ไปที่ Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Run App
  runApp(MyApp());
}

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
        'firebase_register':(context) => FirebaseRegister(),
        'firebase_login':(context) => FirebaseLogin(),
        'Store':(context) => Store(),
      },
      theme: ThemeData(
        primaryColor: sColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
