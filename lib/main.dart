import 'package:flutter/material.dart';
import 'listaDesin.dart';
import 'mapa.dart';
//import 'login.dart';
import 'registro.dart';
import 'cabeceraNav.dart';
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int valor = 0;
  List<String> textos1 = ['hola', 'mundo', 'como'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                color: Colors.red[300],
                icon: Icon(
                  Icons.gavel,
                  color: Colors.blue[300],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.people),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapaUser()));
                },
                icon: Icon(Icons.map),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterUser()));
                },
                child: Text("Register"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaDesinfector()));
                },
                child: Text("Desinfec"),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text('${textos1.elementAt(valor)}'),
            RaisedButton(
              onPressed: () {
                setState(() {
                  if (valor >= 2) {
                    valor = -1;
                  }

                  valor++;
                  print(textos1.elementAt(valor));
                });
              },
              child: Text('Cambio'),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: textos1.map((texto) => Text(texto)).toList(),
          ),
        ],
      ),
    );
  }
}
