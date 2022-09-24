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

  FocusNode nameFocus;
  FocusNode lastnameFocus;
  FocusNode telephoneFocus;
  FocusNode emailFocus;
  FocusNode ageFocus;
  FocusNode webSiteFocus;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de teclados en TextField"),
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
                focusNode: this.nameFocus,
                onEditingComplete: () => requestFocus(context, lastnameFocus),
                textInputAction: TextInputAction.next,
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
                focusNode: lastnameFocus,
                onEditingComplete: () => requestFocus(context, telephoneFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Numero de telefono:"),
                keyboardType: TextInputType.phone,
                focusNode: telephoneFocus,
                onEditingComplete: () => requestFocus(context, emailFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Correo electronico:"),
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocus,
                onEditingComplete: () => requestFocus(context, ageFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Edad:"),
                keyboardType: TextInputType.number,
                focusNode: ageFocus,
                onEditingComplete: () => requestFocus(context, webSiteFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Sitio web:"),
                keyboardType: TextInputType.url,
                focusNode: webSiteFocus,
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

  void requestFocus(BuildContext context, FocusNode) {
    FocusScope.of(context).requestFocus(FocusNode);
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

    nameFocus.dispose();
    lastnameFocus.dispose();
    telephoneFocus.dispose();
    emailFocus.dispose();
    ageFocus.dispose();
    webSiteFocus.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    nameFocus = FocusNode();
    lastnameFocus = FocusNode();
    telephoneFocus = FocusNode();
    emailFocus = FocusNode();
    ageFocus = FocusNode();
    webSiteFocus = FocusNode();
  }
}
