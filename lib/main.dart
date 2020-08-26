import 'package:flutter/material.dart';
import 'mapa.dart';
import 'login.dart';
import 'registro.dart';
import 'listaDesin.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {
                print("vacas");
              },
              icon: Icon(Icons.menu),
            ),
            Text("FireVid"),

            Expanded(
              child: Container(),
            ),

            IconButton(
              onPressed: () {
                print("kha");
              },
              icon: Icon(Icons.account_circle),
            ),
            //Boton Iniciar
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "Sesion",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              elevation: 0.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginUser()));
              },
            ),
          ],
        ),
      ),
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

/*
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("titulo"),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: Center(child: Icon(Icons.arrow_drop_down)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Segunda()));
        },
        child: Text("presioname"),
        backgroundColor: Colors.amberAccent[200],
      ),
    );
  }
}
*/
