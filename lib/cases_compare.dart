import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:myapp2/newCasesPerDay.dart';

class CCompare extends StatelessWidget {
  final List<CasesPerDay> data;
  CCompare({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<CasesPerDay, String>> series = [
      charts.Series(
        id: "Cases",
        data: data,
        domainFn: (CasesPerDay series, _) => series.day,
        measureFn: (CasesPerDay series, _) => series.cases,
        colorFn: (CasesPerDay series, _) => series.barColor,
      )
    ];
    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
