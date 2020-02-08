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
            debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          fit:StackFit.expand, //expandir la imagen
          children: <Widget>[
            Image.network("https://k62.kn3.net/taringa/8/8/4/0/7/B/Nosha/550x977_1F6.jpg",
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
