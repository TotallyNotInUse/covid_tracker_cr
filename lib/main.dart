import 'package:flutter/material.dart';
import 'package:myapp2/pages/compareInfoCASES.dart';
import 'package:myapp2/pages/compareInfoDEATHS.dart';
import 'package:myapp2/pages/compareInfoRECOVERED.dart';
import 'package:myapp2/pages/home.dart';
import 'package:myapp2/pages/loading.dart';
import 'package:myapp2/pages/about.dart';
import 'package:myapp2/pages/error.dart';
import 'package:myapp2/pages/loading_infoCASES.dart';
import 'package:myapp2/pages/loading_infoDEATHS.dart';
import 'package:myapp2/pages/loading_infoRECOVERED.dart';

void main() => runApp(MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.orange,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/about': (context) => About(),
          '/error': (context) => Error(),
          '/cases_c': (context) => CompareInfoC(),
          '/cases_d': (context) => CompareInfoD(),
          '/cases_r': (context) => CompareInfoR(),
          '/loading_infoC': (context) => LoadinginfoC(),
          '/loading_infoD': (context) => LoadinginfoD(),
          '/loading_infoR': (context) => LoadinginfoR(),
        }));
