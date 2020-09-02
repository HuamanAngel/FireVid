import 'package:flutter/material.dart';
//import 'mapa.dart';
import 'cabeceraNav.dart';
//import 'login.dart';
//import 'registro.dart';
//import 'listaDesin.dart';

class MapaUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),

      //Aca pon tu codigo
      //No edites el appBar en lo que puedas
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            "Ubique al mas cercano desinfector",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.06,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Padding(padding: EdgeInsets.all(2)),
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text("data"),
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Image(image: AssetImage('assets/images/images.jpg')),
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text("data"),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
          ),
          Row(
            children: <Widget>[
              Text("Aca los dathjvgos"),
              Text("data"),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("atras"),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.map),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
