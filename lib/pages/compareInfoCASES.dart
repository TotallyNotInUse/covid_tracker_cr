import 'package:flutter/material.dart';
import 'package:myapp2/cases_compare.dart';
import 'package:myapp2/newCasesPerDay.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CompareInfoC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data1;
    data1 = ModalRoute.of(context).settings.arguments;
    final List<CasesPerDay> data = [
      CasesPerDay(
        day: "Yesterday",
        cases: data1["casesYesterday"],
        barColor: charts.ColorUtil.fromDartColor(Colors.orange),
      ),
      CasesPerDay(
        day: "Today",
        cases: data1["casesToday"],
        barColor: charts.ColorUtil.fromDartColor(Colors.orange),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Comparar información (CASOS)"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: CCompare(
            data: data,
          ),
        ),
      ),
    );
  }
}
