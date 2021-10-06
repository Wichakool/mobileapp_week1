import 'package:flutter/material.dart';

import '../config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
               Image(
                  image: NetworkImage(
                      "https://kmutnb.ac.th/getattachment/about/symbols/logo_kmutnb-(6).png.aspx?width=250&height=246"),
                  width: size.width * 0.5,
                  height: size.height * 0.3,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to KMUTNB",
                  style: TextStyle(
                    color: pColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image(
                  image: NetworkImage(
                      "https://www.pngall.com/wp-content/uploads/5/University-PNG-Free-Image.png"),
                  width: size.width * 1,
                  height: size.height * 0.3,
                ),SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: sColor,
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello Worlds");
                    Navigator.pushNamed(context, 'Login');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: sColor,
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                    Navigator.pushNamed(context, 'Register');
                  },
                ),
              ],
            ),
            Positioned(
              top: -60,
              left: -70,
              child: Image.asset(
                "asset/image/circle.png",
                width: size.width * 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
