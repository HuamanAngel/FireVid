import 'package:flutter/material.dart';
import 'cabeceraNav.dart';

//import 'mapa.dart';
//import 'login.dart';
//import 'registro.dart';
//import 'listaDesin.dart';

class ListaDesinfector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
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