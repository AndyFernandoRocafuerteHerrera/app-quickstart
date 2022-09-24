import 'package:flutter/material.dart';

class MyHome1Page extends StatelessWidget {
  MyHome1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assets"),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("assets/image2.jpg"),
          Image.asset("assets/image3.jpg"),
          Image.asset("assets/image4.jpg"),
        ],
      ),
    );
  }
}
