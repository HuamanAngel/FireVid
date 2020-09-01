import 'package:flutter/material.dart';
import 'listaDesin.dart';
import 'mapa.dart';
//import 'login.dart';
import 'registro.dart';
import 'cabeceraNav.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
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
        ],
      ),
    );
  }
}
