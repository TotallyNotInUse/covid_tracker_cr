import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    try {
      Response response =
          await get('https://disease.sh/v3/covid-19/countries/CR');
      Map data = jsonDecode(response.body);
      Navigator.pushReplacementNamed(context, "/home", arguments: {
        "cases": data["cases"],
        "todayCases": data["todayCases"],
        "deaths": data["deaths"],
        "todayDeaths": data["todayDeaths"],
        "recovered": data["recovered"],
        "recoveredToday": data["todayRecovered"],
        "updated": data["updated"]
      });
    } catch (e) {
      print(e);
      Navigator.pushReplacementNamed(context, "/error",
          arguments: {"error": e});
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
