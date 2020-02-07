import 'package:flutter/material.dart';



class Imagenes extends StatefulWidget{
    Imagenes({Key key}) : super(key:key);
    
  @override
  ImagenesState createState() => ImagenesState();
}

// clase Mapa
class ImagenesState extends State<Imagenes>{
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit:StackFit.expand, //expandir la imagen
          children: <Widget>[
            Image.network("https://upload.wikimedia.org/wikipedia/commons/1/1b/Logo_de_EXO.png",
              fit:BoxFit.fill,
              ),
            Container(
              alignment: Alignment.center,
              ),
              Opacity(//para la opacidad del contenedor

                opacity:0.8, 
                child: Center(
                  child: Container(
                    height: 90,
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Text('Por fin viernes',
                    style: TextStyle(color:Colors.white, fontSize: 34),
                    ),
                    ),
                    ))
          ],
        ),


      )

    );
    
  }
}
