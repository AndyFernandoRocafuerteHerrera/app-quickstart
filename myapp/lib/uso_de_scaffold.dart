import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Uso de Scaffold'),
          ),
          body: Center(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
          drawer: Drawer(),
          endDrawer: Drawer(),
          backgroundColor: Colors.black,
        ));
  }
}
