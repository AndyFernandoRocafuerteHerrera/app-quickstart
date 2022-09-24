import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Material App Bar'),
            ),
            body: Center(
              child: Image.network(
                  "https://www.revistaawake.com/wp-content/uploads/2016/10/Portada-14.gif"),
            )));
  }
}
