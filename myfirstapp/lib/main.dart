import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            "Trabajar Duro que en esta vida todo se Puede Andy 2.0 EC :):",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              backgroundColor: Colors.white,
            ),
          ),
        ));
  }
}

class PruebaPage extends StatelessWidget {
  PruebaPage();
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
          "https://i.pinimg.com/originals/69/bf/bb/69bfbb4b6fe38e17c248db5242664fd2.gif",
          height: 750,
          width: 360,
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}

class PruebaIconPage extends StatelessWidget {
  PruebaIconPage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bcxcxcxar'),
          ),
          //body: Center(
          //child: Icon(
          //Icons.beach_access,
          //size: 300,
          //color: Colors.orange,
          body: Center(
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                print("Hola");
              },
              iconSize: 200,
            ),
          ),
        ));
    // ),
    //),
    //);
  }
}

class PruebaIcon2Page extends StatelessWidget {
  PruebaIcon2Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ツ ＡＮＤＹ 2.0 → ღ"),
        ),
        body: Center(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        drawer: Drawer(),
        //endDrawer: Drawer(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class PruebaIcon3Page extends StatelessWidget {
  PruebaIcon3Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ツ ＡＮＤＹ 2.0 → ღ"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person),
              onPressed: _add,
            ),
            IconButton(
              icon: Icon(Icons.dinner_dining),
              onPressed: _add,
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: _add,
          ),
        ),
        body: Center(),
      ),
    );
  }

  void _add() {
    print("hola");
  }
}

class PruebaIcon4Page extends StatelessWidget {
  PruebaIcon4Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ツ ＡＮＤＹ 2.0 → ღ"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("¿Que esta haciendo hay?"),
            Image.network(
                "https://i1.wp.com/66.media.tumblr.com/1b24dfdb0bfe0c1fa81951386826666a/tumblr_po1tz1TY1e1sjg4b1_500.gif",
                height: 100),
            Text("¿Porque le gusta a goku proteger al planeta?"),
            Image.network(
                "https://i.pinimg.com/originals/3f/2a/b1/3f2ab16d77aa770f00f301da357dd694.gif",
                height: 100),
            Text("Quien ganara esa pelea?"),
            Image.network(
                "https://i.pinimg.com/originals/8b/74/c8/8b74c8827959ad69d811dc6d11ad5764.gif",
                height: 100),
            Text("¿Porque goku pelea con el sr bills?"),
            Image.network(
                "https://i.pinimg.com/originals/55/ba/3c/55ba3c339939622d913025b9eb4e52b9.gif",
                height: 100),
          ],
        ),
      ),
    );
  }
}

class PruebaIcon5Page extends StatelessWidget {
  PruebaIcon5Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Uso de Row"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text("Activar sonido:")),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Dpi para free fire:")),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PruebaIcon6Page extends StatelessWidget {
  PruebaIcon6Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Margenes y padding en container"),
        ),
        body: Row(
          children: <Widget>[
            Text("Hola"),
            SizedBox(
              width: 20,
            ),
            Text("Bienvenido")
          ],
        ),
      ),
    );
  }
}

class PruebaIcon7Page extends StatelessWidget {
  PruebaIcon7Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colores"),
        ),
        body: Center(
          child: Container(
            color: Color.fromARGB(0xff, 0x1D, 0xd1, 0xfe), //29, 209, 254
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}

class PruebaIcon8Page extends StatelessWidget {
  PruebaIcon8Page();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://picsum.photos/id/$index/400/200",
              height: 200,
            );
          },
        ),
      ),
    );
  }
}
