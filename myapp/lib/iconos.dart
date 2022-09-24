import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uso de Iconos'),
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.dialer_sip),
            onPressed: () {
              print("Hola");
            },
            iconSize: 200,
          ),
        ),
      ),
    );
  }
}
