import 'package:firevid/login.dart';
import 'package:flutter/material.dart';
//import 'mapa.dart';
//import 'login.dart';
import 'cabeceraNav.dart';
//import 'registro.dart';
//import 'listaDesin.dart';

class RegisterUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),

      //Aca pon tu codigo
      //No edites el appBar en lo que puedas
      body: Center(    
        child: Container(
          width: 280, height: 500,
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Container(
                      width: 280, height: 120,
                      child: Center(
                        child: Text('Registro',textScaleFactor: 2.0,
                        style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
              Center(                
                child: Text('Elige tu tipo de usuario',
                  textScaleFactor: 1.2,),                
              ), 
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: 80,
                      child: Center(
                        child:  RaisedButton(
                          onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterCl1()));
                          } ,
                          color: Colors.green,
                          child: Text("Cliente",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 80,
                      child: Center(
                        child:  RaisedButton(
                          onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterDes1()));
                          } ,
                          color: Colors.green,
                          child: Text("Desinfector",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 120,
                      child: Center(
                        child:  RaisedButton(
                          onPressed: (){
                          Navigator.pop(context);
                          } ,
                          color: Colors.white,
                          child: Text("Volver",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],                    
                  ),
              ),
            ],
          ),
        ),  
      ),
    );
  }
}

class RegisterDes1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),
      body: Center(
        child: Container(
          width: 280, height: 300,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Crear nombre de usuario',
                    textScaleFactor: 1,),
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
                    child: Text('Correo electrónico',
                    textScaleFactor: 1,),
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
                    child: Text('Crear contraseña',
                    textScaleFactor: 1,),
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
                    child: Text('Confirmar contraseña',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: TextField(),
                   ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          } ,
                          color: Colors.green,
                          child: Text("Atrás",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Container(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RegisterDes2()));
                          } ,
                          color: Colors.green,
                          child: Text("Siguiente",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class RegisterCl1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),
      body: Center(
        child: Container(
          width: 280, height: 300,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Crear nombre de usuario',
                    textScaleFactor: 1,),
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
                    child: Text('Correo electrónico',
                    textScaleFactor: 1,),
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
                    child: Text('Crear contraseña',
                    textScaleFactor: 1,),
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
                    child: Text('Confirmar contraseña',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: TextField(),
                   ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          } ,
                          color: Colors.green,
                          child: Text("Atrás",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Container(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RegisterCl2()));
                          } ,
                          color: Colors.green,
                          child: Text("Siguiente",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class RegisterDes2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),
      body: Center(
        child: Container(
          width: 280, height: 400,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Región',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Provincia',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Distrito',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Tipo de tarifa',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Tarifa',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: TextField(),
                  ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          } ,
                          color: Colors.green,
                          child: Text("Atrás",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Container(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RegisterDes3()));
                          } ,
                          color: Colors.green,
                          child: Text("Siguiente",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class RegisterCl2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),
      body: Center(
        child: Container(
          width: 280, height: 300,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Región',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Provincia',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 140, height: 40,
                    child: Text('Distrito',
                    textScaleFactor: 1,),
                  ),
                  Container(
                    width: 140, height: 10,
                    child: DropdownButton(
                      items: null, 
                      onChanged: null
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          } ,
                          color: Colors.green,
                          child: Text("Atrás",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Container(
                    child: Container(
                      width: 140, height: 120,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginUser()));
                          } ,
                          color: Colors.green,
                          child: Text("Registrar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class RegisterDes3 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),
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
                        child: Text('Video de verificación',textScaleFactor: 1.5,
                        style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 60, height: 80,
                      child: Center(
                        child: Icon(
                          Icons.camera_alt,
                        ),
                      ),
                    ),
                  ),  
                  Center(
                    child: Container(
                      width: 140, height: 80,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                          } ,
                          color: Colors.white,
                          child: Text("Activar Camara",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 60, height: 80,
                      child: Center(
                        child: Icon(
                          Icons.insert_photo,
                        ),
                      ),
                    ),
                  ),  
                  Center(
                    child: Container(
                      width: 200, height: 80,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                          } ,
                          color: Colors.white,
                          child: Text("Buscar en el dispositivo",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 80,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          } ,
                          color: Colors.green,
                          child: Text("Atrás",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Center(
                    child: Container(
                      width: 140, height: 80,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginUser()));
                          } ,
                          color: Colors.green,
                          child: Text("Registrar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}