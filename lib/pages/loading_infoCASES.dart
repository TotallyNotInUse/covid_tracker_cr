import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadinginfoC extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadinginfoC> {
  void getData() async {
    try {
      final now = DateTime.now();
      final yesterday =
          new DateTime(now.year, now.month, now.day - 1).toString();
      String yesterday1 = yesterday.substring(0, 10);
      final today = new DateTime(now.year, now.month, now.day - 1).toString();
      String today1 = today.substring(0, 10);
      Response responseY =
          await get('https://covid19-api.org/api/status/CR?date=$yesterday1');
      Map dataY = jsonDecode(responseY.body);
      Response responseT =
          await get('https://covid19-api.org/api/status/CR?date=$today1');
      Map dataT = jsonDecode(responseT.body);
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, "/cases_c", arguments: {
        "casesYesterday": dataY["cases"],
        "casesToday": dataT["cases"]
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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }
}
