import 'package:flutter/material.dart';
import 'cabeceraNav.dart';


//import 'mapa.dart';
//import 'login.dart';
//import 'registro.dart';
//import 'listaDesin.dart';
import 'main.dart';

class ListaDesinfector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CabeceraNavInitial(context),
      drawer: LateralMenu(),


      //Aca pon tu codigo
      //No edites el appBar en lo que puedas
        backgroundColor: Colors.white,

      body:Column(


          children: <Widget>[


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                IconButton(
                  color: Colors.green,
                  onPressed: () {
                    print("kha");

                  },
                  icon: Icon(Icons.accessibility),
                ),
                Text(
                  "Lista De Desinfectores",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
                IconButton(
                  color: Colors.green,
                  onPressed: () {
                    print("kha");

                  },
                  icon: Icon(Icons.accessibility),
                ),
              ],
            ),

            DataTable(


              sortColumnIndex: 2,

              sortAscending: false,


                columns: [


                    DataColumn(label: Text("Nombre",style: TextStyle(
                      color: Colors.redAccent,fontSize: MediaQuery.of(context).size.width * 0.025,))),
                    DataColumn(label: Text("Precio",style: TextStyle(
                    color: Colors.redAccent,fontSize: MediaQuery.of(context).size.width * 0.025,)),numeric: true),
                    DataColumn(label: Text("Distrito",style: TextStyle(
                    color: Colors.redAccent,fontSize: MediaQuery.of(context).size.width * 0.025,))),
                    DataColumn(label: Text("Disponible",style: TextStyle(
                    color: Colors.redAccent,fontSize: MediaQuery.of(context).size.width * 0.025,))),
                    DataColumn(label: Text("Tipo de Tarifa",style: TextStyle(
                    color: Colors.redAccent,fontSize: MediaQuery.of(context).size.width * 0.025,))),

        ],


        rows: [

          DataRow(

              selected: true,

              cells: [

                DataCell(Text("Juan José",style: TextStyle(
                  color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.022,))),
                DataCell(Text("25")),
                DataCell(Text("La Molina")),
                DataCell(Text("         Si")),
                DataCell(Text("  Por cuarto"))
              ]),
          DataRow(

              selected:true,
              cells: [

            DataCell(Text("Jesús Alonso",style: TextStyle(
              color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.022,))),
            DataCell(Text("35")),
            DataCell(Text("Pueblo Libre")),
            DataCell(Text("         Si")),
            DataCell(Text("  Por hora"))
          ]),
          DataRow(
              selected:true,
              cells: [
            DataCell(Text("Pedro Sánchez",style: TextStyle(
              color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.022,))),
            DataCell(Text("45")),
            DataCell(Text("San Miguel")),
            DataCell(Text("         Si")),
            DataCell(Text("  Por hora"))
          ]),


        ],
      ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                RaisedButton(
                  color: Colors.greenAccent,

                  onPressed: () {

                    Navigator.pop(context);
                  },
                  child: Text("1",style: TextStyle(
                    color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.03,)),
                  shape: StadiumBorder(),
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("2",style: TextStyle(
                    color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.03,)),
                  shape: StadiumBorder(),
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("3",style: TextStyle(
                    color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.03,)),
                  shape: StadiumBorder(),
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("4",style: TextStyle(
                    color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.03,)),
                  shape: StadiumBorder(),
                ),
                Row(

                  children:<Widget> [
                  RaisedButton(

                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("---->",style: TextStyle(
                    color: Colors.black,fontSize: MediaQuery.of(context).size.width * 0.03,)),
                    shape: StadiumBorder(),
                ),],
                ),


            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(5.0),
                color: Colors.indigoAccent,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Atrás",style: TextStyle(
                  color: Colors.white,fontSize: MediaQuery.of(context).size.width * 0.04,)),
              )

              ]

            ),

          ],


      ),


    ])
    );
  }
}
