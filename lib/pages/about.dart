import 'package:flutter/material.dart';
import 'package:link/link.dart';

class About extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

Widget quoteTemplate(mainText) {
  return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              mainText,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 6.0),
          ],
        ),
      )
  );
}

Widget generateLink(String text, String url){
  return Link(
    child: Text(text,
    style: TextStyle(
        fontSize: 18,
      color: Colors.lightBlue
    ),),
    url: url,
  );
}

class _ChooseLocationState extends State<About> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Acerca de esta app'),
        elevation: 2,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            quoteTemplate("Fuentes de información médica:\nhttps://www.worldometers.info/coronavirus \n https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series \n https://github.com/nytimes/covid-19-data \n https://github.com/ActiveConclusion/COVID19_mobility \n https://www.canada.ca/en/public-health/services/diseases/2019-novel-coronavirus-infection.html \n https://github.com/pcm-dpc/COVID-19 \n https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/Gesamt.html \n https://info.gesundheitsministerium.at/ \n https://www.mohfw.gov.in/ \n https://covid19.ncdc.gov.ng/ \n https://github.com/openZH/covid_19/ \n https://coronavirus.data.gov.uk"),
            quoteTemplate("Esta app fue elaborada usando Flutter: https://flutter-es.io"),
            quoteTemplate("HTTP API proporcionada gratis por: https://disease.sh"),
            quoteTemplate("Hermosa interfaz hecha con Material Design (Diseño Material): https://material.io"),
            quoteTemplate("Made with ❤ by Julian Murillo"),
          ],
        ),
      )
    );
  }
}