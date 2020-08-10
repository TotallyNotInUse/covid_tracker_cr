import 'package:flutter/material.dart';

class Error extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<Error> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: ListTile(
        leading: Icon(Icons.signal_wifi_off),
        title: Text("Ups! Algo salió mal"),
        subtitle: Text("Verifica tu conexión a internet."),
        trailing: OutlineButton(
          child: Text("Reintentar"),
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/");
          },
        ),
      ),
    )));
  }
}
