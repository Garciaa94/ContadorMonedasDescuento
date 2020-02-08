import 'package:flutter/material.dart';
class Descuento extends StatefulWidget{
  Descuento({Key key,this.title}) : super(key:key);
   final String title;
  @override
  DescuentoState createState() => DescuentoState();
}
class DescuentoState extends State<Descuento>{
    num _cont = 0;
  double _cont1 = 0;
  double _cont2 = 0;
  double _cont3 = 0;
   double contar=0;
   num inValor =0;
  num total=0;
  num tc =0;
 

  void _incrementCounter() {
    setState(() {
      _cont=_cont+0.01;
      contar=(_cont+_cont1 + _cont2 + _cont3) ;
     
    });
  }
  
   void _incrementCounter1() {
    setState(() {
      
      _cont1=_cont1+0.05;
      contar=(_cont+_cont1 + _cont2 + _cont3) ;
    
    });
  }
   void _incrementCounter2() {
    setState(() {
      
      _cont2=_cont2+0.25;
      contar=(_cont+_cont1 + _cont2 + _cont3) ;
    
    });
  }
  void _incrementCounter3() {
    setState(() {
      
      _cont3=_cont3+0.5;
      contar=(_cont+_cont1 + _cont2 + _cont3) ;
    
    });
  }

  void _incrementCounterTotal() {
    setState(() {
      
    tc = total-contar;
      
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              TextField(
              
                onChanged: (inValor) {
                  total = num.parse(inValor);
              //  print("First text field: $total");
                   }, 
              decoration: InputDecoration(
              fillColor: Colors.greenAccent,
                      filled: true,
              border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                      ),
              hintText: 'Ingrese Total a pagar 0 \$',
                
                
  ),
              
), new Row( 
          
        children: <Widget>[
           new RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      " 0.01",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed:  _incrementCounter,
              
              ),
             new RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      " 0.05",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    
              onPressed:  _incrementCounter1,
             
              ),
        ],),
            new Row( 
              
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
            new RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      " 0.25",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    
              onPressed:  _incrementCounter2,
             
              ),
            new RaisedButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      " 0.5",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    
              onPressed:  _incrementCounter3,
             
              ),
          ],),
             new RaisedButton(
                    color: Colors.grey[850],
                    textColor: Colors.white,
                    child: Text(
                      "Calcular Cambio",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    
              onPressed:  _incrementCounterTotal,
             
              ),
            
            Text(
              'Practica Ingenieria de Software II',
            ),
             Text('Total: '
              '$contar',
              style: Theme.of(context).textTheme.headline,
            ),
            
            Text('Cambio: '
              '$tc',
              style: Theme.of(context).textTheme.headline,
            ),
            
          ],
        ),
      ),
    );
  }
}