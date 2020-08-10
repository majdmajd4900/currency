
import 'package:auto_route/auto_route_annotations.dart';
//import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:unitconverter/currenceyconverter.dart';
import 'package:unitconverter/datasize.dart';
//import 'package:unitconverter/currenceyconverter.dart';
import 'package:unitconverter/routers.gr.dart';
//import 'package:unitconverter/custom_icons_icons.dart';
//import 'custom_icons_icons.dart';
void main() {
  runApp(UnitConverterHomePage());
}

class UnitConverterHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      routes: {
        '/screen2' : (_){return CurrencyConverter();},
        '/screen3' : (_){return DataSize();},
      },
      home: _UnitConverterHomePage());
  }}  
    
     class _UnitConverterHomePage extends StatelessWidget {
       @override
       Widget build(BuildContext context) {
         return Scaffold(
        appBar: AppBar(
          title: Text('Unit Converter Home Page'),
          ),
          body: Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(color: Colors.redAccent,
                child: IconButton(
                  icon: Icon(Icons.monetization_on),
                   onPressed: (){Navigator.of(context).pushNamed('/screen3');}) 
                   ,),

              
                
                   
                
                   Container(color: Colors.indigoAccent,
                child: IconButton(
                  icon: Icon(Icons.monetization_on),
                   onPressed: (){
                     Navigator.of(context).pushNamed('/screen2');
                     
                   //  Navigator.of(context).pushNamed('/screen2')
}) 
                   ,),
                    
              ],),
          ),
      );

      
      
    
  }
}
       
/*class UnitConverterHomePage extends StatefulWidget {
  @override
  //_UnitConverterHomePageState createState() { 
   

  @override
  State<StatefulWidget> createState() {
  
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'my app',
       home: _UnitConverterHomePageState()
     ) ;
   }
  } 
 }

class _UnitConverterHomePageState extends State<UnitConverterHomePage> {
 // MyRouter myRouter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Unit Converter Home Page'),
          ),
          body: Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(color: Colors.redAccent,
                child: IconButton(
                  icon: Icon(Icons.monetization_on),
                   onPressed: (){print('hello');}) 
                   ,),

              
                
                   
                
                   Container(color: Colors.indigoAccent,
                child: IconButton(
                  icon: Icon(Icons.monetization_on),
                   onPressed: (){
                     Navigator.of(context).pushNamed('/screen2');
                     
                   //  Navigator.of(context).pushNamed('/screen2')
}) 
                   ,),
                   Container(color: Colors.lightGreenAccent,
                child: IconButton(
                  icon: Icon(Icons.monetization_on),
                   onPressed: (){print('hello');}) 
                   ,),
                   Container(color: Colors.purpleAccent,
                child: IconButton(
                  icon: Icon(Icons.monetization_on),
                   onPressed: (){print('hello');}) 
                   ,), 
              ],),
          ),
      );
     //MaterialApp(
     // routes: {
     //   '/screen2' : (_){return CurrencyConverter();}
    //  } ,
    //  initialRoute: MyRouter.initialRoute,
   /*   onGenerateRoute: (settings) {
        List<String> route= settings.name.toString().split('/');
        switch(route[2]){
          case 'screen2':
          MaterialPageRoute(builder: (context){
            return CurrencyConverter();
          });*
        }
      },*/
     // title: 'Unit Converter App',
      //home: ,
      
    //);
  
*/