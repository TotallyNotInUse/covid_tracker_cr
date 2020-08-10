import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Widget generateCard(String title, String subtitle, Icon icon) {
  return Card(
    elevation: 10,
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: icon,
    ),
  );
}

class _HomeState extends State<Home> {
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Casos de COVID-19 en Costa Rica"),
          actions: [
            IconButton(
              icon: Icon(Icons.info),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "CASOS",
                      style: TextStyle(
                          letterSpacing: 1.5, color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  generateCard(data["todayCases"].toString(),
                      "nuevos casos hoy", Icon(Icons.add)),
                  generateCard(
                      data["cases"].toString(),
                      "Casos totales desde el primer día",
                      Icon(Icons.local_hospital)),
                  OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/loading_infoC");
                    },
                    child: Text("COMPARAR INFORMACIÓN DE AYER"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "MUERTES",
                      style: TextStyle(
                          letterSpacing: 1.5, color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  generateCard(
                      data["todayDeaths"].toString(),
                      "nuevas muertes hoy",
                      Icon(Icons.indeterminate_check_box)),
                  generateCard(data["deaths"].toString(),
                      "Muertes totales desde el primer día", Icon(Icons.clear)),
                  OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/loading_infoD");
                    },
                    child: Text("COMPARAR INFORMACIÓN DE AYER"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "RECUPERADOS",
                      style: TextStyle(
                          letterSpacing: 1.5, color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  generateCard(data["recoveredToday"].toString(),
                      "nueva gente recuperada hoy", Icon(Icons.add_box)),
                  generateCard(
                    data["recovered"].toString(),
                    "Gente total que se ha recuperado desde el primer día",
                    Icon(Icons.accessibility_new),
                  ),
                  OutlineButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/loading_infoR");
                    },
                    child: Text("COMPARAR INFORMACIÓN DE AYER"),
                  ),
                ],
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
          child: Icon(Icons.refresh),
          backgroundColor: Colors.orange,
        ));
  }
}
