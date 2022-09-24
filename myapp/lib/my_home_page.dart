import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso basico del Navigator"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar segunda pantalla"),
          onPressed: () {
            _showSecondPage(context);
          },
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    //final route = MaterialPageRoute(builder: (BuildContext context) {
    //// name: "Andy Rocafuerte",
    // );
    //});
    //Navigator.of(context).push(route);
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(name: "Andy", lastname: "Rocafuerte"));
  }
}
