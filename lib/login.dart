import 'package:flutter/material.dart';
import 'cabeceraNav.dart';
//import 'mapa.dart';
//import 'login.dart';
import 'registro.dart';
//import 'listaDesin.dart';
import 'main.dart';

class LoginUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),

      //Aca pon tu codigo
      //No edites el appBar en lo que puedas
      body: Center(    
        child: Container(
          width: 280, height: 400,
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Container(
                      width: 280, height: 120,
                      child: Center(
                        child: Text('Iniciar sesión',textScaleFactor: 2.0,
                        style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Usuario',
                    textScaleFactor: 1.5,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: TextField(),
                   ),
                ],          
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Contraseña',
                      textScaleFactor: 1.5,
                    ),
                  ),
                  Container(
                    width: 140, height: 20,
                    child: TextField(),
                   ),
                ],
              ),
              Row(
                children: [
                  Center(
                    child: Container(
                      width: 280, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                          } ,
                          color: Colors.green,
                          child: Text("Ingresar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterUser()));
                  } ,
                  color: Colors.white,
                  child: Text("Registrarse",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),  
      ),
    );
  }
}
