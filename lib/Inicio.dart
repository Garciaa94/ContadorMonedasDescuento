import 'package:flutter/material.dart';


class Inicio extends StatefulWidget{
  Inicio({Key key}) : super(key:key);
  @override
   InicioState createState() => InicioState();
}
class InicioState extends State<Inicio>{
  @override
  Widget build(BuildContext context) {
    
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0)),
          new Text("Hello World",style: new TextStyle(fontWeight:FontWeight.bold),),
        ],
      ),
    );
  }
}