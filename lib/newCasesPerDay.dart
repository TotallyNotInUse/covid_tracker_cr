import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class CasesPerDay {
  final String day;
  final int cases;
  final charts.Color barColor;
  CasesPerDay(
      {@required this.day, @required this.cases, @required this.barColor});
}
