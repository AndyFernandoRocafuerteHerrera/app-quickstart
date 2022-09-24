import 'package:flutter/material.dart';

import 'second_page.dart';

class MyHome2Page extends StatefulWidget {
  @override
  _MyHome2PageState createState() => _MyHome2PageState();
}

class _MyHome2PageState extends State<MyHome2Page> {
  String nameValue;
  String lastnameValue;

  final nameController = TextEditingController(text: "Andy");
  final lastnameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Implementacion de campos de formulario con el Widget Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Nombre:"),
                onSaved: (value) {
                  nameValue = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(labelText: "Apellido:"),
                onSaved: (value) {
                  lastnameValue = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  }
                },
              ),
              RaisedButton(
                child: Text("Mostrar segunda pantalla"),
                onPressed: () {
                  _showSecondPage(context);
                },
              ),
              Container(
                height: 1000,
                width: 20,
                color: Colors.black,
              ),
              Container(
                height: 1000,
                width: 20,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(
              name: this.nameValue, //sirve para poner varios nombres
              lastname: this.lastnameValue));
    } //sirve para poner varios nombres
  }

  @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
    this.nameController.dispose();
    this.lastnameController.dispose();
  }
}
