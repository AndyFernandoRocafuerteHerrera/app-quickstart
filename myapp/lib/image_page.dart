import 'package:flutter/material.dart';
//import 'package:myapp/pages/sencond_page.dart';

class Image14Page extends StatefulWidget {
  Image14Page();

  Image14PageState createState() => Image14PageState();
}

class Image14PageState extends State<Image14Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: Image14Page(),
      initialRoute: "/",
      routes: {
        // "/": (BuildContext context) => Image14Page(),
        ///"/second": (BuildContext context) => SecondPage(),l
      },
    );
  }
}
