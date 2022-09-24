import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Image5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uso de AppBar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _add,
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: _add,
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: _add,
          ),
          //shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
        ),
        body: Center(),
      ),
    );
  }

  void _add() {
    print("Hola");
  }
}
