import 'package:firevid/listaDesin.dart';
import 'package:flutter/material.dart';
import 'cabeceraNav.dart';

class Neg1 extends StatefulWidget {
  @override
  _Neg1State createState() => _Neg1State();
}

class _Neg1State extends State<Neg1> {
  int valorini = 50;
  int _valor = 50;
  List<String> textos1 = ['hola', 'mundo', 'como'];

  @override
  Widget build(BuildContext context) {
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
                      width: 280, height: 80,
                      child: Center(
                        child: Text('Negociación',textScaleFactor: 2.0,
                        style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 280, height: 40,
                    child: Text('La oferta actual es '+'$_valor',
                    textScaleFactor: 1.2,),
                  ),
                ],          
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 60,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(_valor <= valorini/2){
                                _valor = valorini;
                              }else{
                                _valor-=5;
                              }
                            });
                          } ,
                          color: Colors.green,
                          child: Text("- 5",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Container(
                    child: Container(
                      width: 140, height: 60,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(_valor <= valorini/2){
                                _valor = valorini;
                              }else{
                                _valor-=10;
                              }
                            });
                          } ,
                          color: Colors.green,
                          child: Text("- 10",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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
                             MaterialPageRoute(builder: (context) => Neg2(_valor)));
                          } ,
                          color: Colors.white,
                          child: Text("Enviar",
                            style: TextStyle(color: Colors.blue),
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
                    MaterialPageRoute(builder: (context) => ListaDesinfector()));
                  } ,
                  color: Colors.white,
                  child: Text("Cancelar negociación",
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

class Neg2 extends StatefulWidget {
  final int valora;
  Neg2(this.valora);
  @override
  _Neg2State createState() => _Neg2State();
}

class _Neg2State extends State<Neg2> {
  int _valor  = 50;
  @override
  Widget build(BuildContext context) {
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
                      width: 280, height: 80,
                      child: Center(
                        child: Text('Negociación',textScaleFactor: 2.0,
                        style: TextStyle(color: Colors.blue),),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 280, height: 40,
                    child: Text('La oferta actual es '+'$_valor',
                    textScaleFactor: 1.2,),
                  ),
                ],          
              ),
              Row(
                children:[
                  Center(
                    child: Container(
                      width: 140, height: 60,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(_valor > 2*widget.valora || _valor < widget.valora){
                                _valor = widget.valora;
                              }else{
                                _valor+=5;
                              }
                            });
                          } ,
                          color: Colors.green,
                          child: Text("+ 5",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),  
                  Container(
                    child: Container(
                      width: 140, height: 60,
                      child: Center(
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              if(_valor > 2*widget.valora || _valor < widget.valora){
                                _valor = widget.valora;
                              }else{
                                _valor+=10;
                              }
                            });
                          } ,
                          color: Colors.green,
                          child: Text("+ 10",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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
                          } ,
                          color: Colors.white,
                          child: Text("Enviar",
                            style: TextStyle(color: Colors.blue),
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
                    MaterialPageRoute(builder: (context) => ListaDesinfector()));
                  } ,
                  color: Colors.white,
                  child: Text("Aceptar",
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