import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobileapp_week1/config/constant.dart';
import 'package:mobileapp_week1/model/TCT.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;

  @override
  void initState() {
  
    super.initState();
    print("Hello");
    callAPI();
  }

  Future<void> callAPI() async {
    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);

    print(response.statusCode);

    print(response.body);
    setState(() {
      data = tctFromJson(response.body);
    });

  }
  
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    print("true");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: pColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Video',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.video_call,
                color: Colors.pink,
                size: 35,
              ),
              onTap: () {
                print('Video');
                Navigator.pushNamed(context, 'Video');
              },
            ),
            ListTile(
              title: Text(
                'Image',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.image,
                color: Colors.green,
                size: 30,
              ),
              onTap: () {
                print('Image');
                Navigator.pushNamed(context, 'Image');
              },
            ),
            ListTile(
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.near_me,
                color: Colors.blue,
                size: 30,
              ),
              onTap: () {
                print('Location');
                Navigator.pushNamed(context, 'Location');
              },
            ),
            ListTile(
                onTap: () {
                  print('Menu Store');
                  Navigator.pushNamed(context, 'Store');
                },
                title: Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(
                  Icons.store,
                  color: Colors.purple,
                  size: 36,
                ),
              ),
              ListTile(
                onTap: () {
                  logout();
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, 'Index', arguments: []);
                },
                title: Text(
                  'Log out',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue,
                  size: 36,
                ),
              ),
          ],
        ),
      ),
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.api),
              SizedBox(
                width: 20,
              ),
              Text("Dashboard")
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Activity : " + (data?.activity ?? "loading.."),
                style: TextStyle(fontSize: 30, color: pColor),
              ),

              SizedBox(
                height: 30,
              ),

              Text("Type : " + (data?.type ?? ''),
                  style: TextStyle(fontSize: 30, color: tColor)),

              SizedBox(
                height: 30,
              ),

              Text("Price : " + '${data?.price ?? ""}',
                  style: TextStyle(fontSize: 30, color: pColor)),

              SizedBox(
                height: 30,
              ),

              Text("Participants : " + '${data?.participants ?? ""}',
                  style: TextStyle(fontSize: 30, color: tColor)),
            ]),
          ),
        ));
  }
}
