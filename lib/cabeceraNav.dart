import 'package:flutter/material.dart';
import 'listaDesin.dart';
import 'mapa.dart';
import 'login.dart';
import 'registro.dart';
import 'main.dart';

class CabeceraNavInitial extends AppBar {
  CabeceraNavInitial(context)
      : super(
          backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              /*IconButton(
                onPressed: () {
                  print("vacas");
                },
                icon: Icon(Icons.menu),
              ),*/
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
        );
}

class LateralMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 1,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("caminando"),
              accountEmail: Text("vacas"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/images.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
/*              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width * 0.005,
                  ),
                ),
              ),
*/

              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text(
                  "Usuario",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Inicio sesion"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Registro (provicional)"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Cuenta"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ListTile(
                title: Text(
                  "Contenido",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Desinfectores"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaDesinfector()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Mapa"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapaUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Subasta"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ListTile(
                title: Text(
                  "Soporte",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Reportar"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Manual"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListTile(
                title: Text("- Reglas"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginUser()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
