import 'package:flutter/material.dart';

class Image6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uso de columna'),
        ),
        body: Column(children: <Widget>[
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
          ),
          Text("Hola, estoy en una columna"),
          Image.network(
            "https://especiales.elcomercio.com/documentos/2018/04/pazecuador.gif",
            height: 100,
          ),
          Image.network(
            "https://especiales.elcomercio.com/2017/gifs-ec/turismo.gif",
            height: 100,
          ),
          Image.network(
            "https://www.revistaawake.com/wp-content/uploads/2016/05/dia1.gif",
            height: 100,
          ),
          Image.network(
            "https://4.bp.blogspot.com/-thKXrUhicmE/WOL9Gc1sQyI/AAAAAAAA1dM/mwIbkvB-QqsJ-sBUW01k817Y31YrLx-ZACLcB/s1600/gif%2Bpaisaje%2B67.gif  ",
            height: 100,
          ),
        ]),
      ),
    );
  }

  void _add() {
    print("Hola");
  }
}
