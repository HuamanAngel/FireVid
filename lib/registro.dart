import 'package:flutter/material.dart';
import 'mapa.dart';
import 'login.dart';
import 'registro.dart';
import 'listaDesin.dart';

class RegisterUser extends StatelessWidget {
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
      //Aca pon tu codigo
      //No edites el appBar en lo que puedas
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Atras"),
        ),
      ),
    );
  }
}
