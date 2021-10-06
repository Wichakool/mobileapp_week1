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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
