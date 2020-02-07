import 'package:flutter/material.dart';
import 'package:ejemplo_flutter/implementaciones/Imagenes.dart';
import 'package:ejemplo_flutter/implementaciones/Descuento.dart';
import 'package:ejemplo_flutter/implementaciones/Inicio.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(), 
  ));
}
class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
  
}
class _State extends State<MyApp>{
  List<BottomNavigationBarItem> items;
  String values="";
  final Key mapPage = PageStorageKey('map');
  final Key poolPage = PageStorageKey('pool');
  final Key schoolPage = PageStorageKey('school');
  int currentTab = 0;
  Imagenes imagenes;
  Descuento descuento;
  Inicio inicio;
  List<Widget> pages;
  Widget currentPage;
  
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  void initState() {
    
    imagenes=new Imagenes(
      key:mapPage,
    );
    descuento=new Descuento(
      key: poolPage,
    );
    inicio=new Inicio(
      key:schoolPage,
    );
    pages=[imagenes,descuento,inicio];
    currentPage = imagenes;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold( 
      appBar: new AppBar(
        title: new Text("Actividad 1"),
      ), 
      body:PageStorage(
        bucket: bucket,
        child: currentPage) ,
        bottomNavigationBar:new BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int index){
        setState(() {
        currentTab=index; 
        currentPage=pages[index];
      });
    },
      items: [
        
      new BottomNavigationBarItem(
        icon: new Icon(Icons.image),
        
        title: new Text(
        "Imagen",
        style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
        color: Colors.red
        ),)),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.attach_money),
        title: new Text("\$ Cambio",
        style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.0
        ),)),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        title: new Text("Home",
        style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.0
        ),)),
        ])
        
        ,
    )
    
    ;
  }
}