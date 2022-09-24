import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHome1Page extends StatefulWidget {
  @override
  _MyHome1PageState createState() => _MyHome1PageState();
}

class _MyHome1PageState extends State<MyHome1Page> {
  TextEditingController nameTextController;

  TextEditingController lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Implementacion de campos de formulario sin el Widget Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Nombre:"),
              controller: nameTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Apellido:"),
              controller: lastNameTextController,
            ),
            RaisedButton(
              child: Text("Mostrar segunda pantalla"),
              onPressed: () {
                _showSecondPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            name: nameTextController.text, //sirve para poner varios nombres
            lastname:
                lastNameTextController.text)); //sirve para poner varios nombres
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}
