//import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CurrencyConverter extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
Map <String, String> myMap={
  'usd': '3.4',
  'nis': '1',
  'jd':'4.9',
  'egp': '0.2',
};  

double from = 3.4;
double to = 3.4;
double value = 0;
String result='0';

  @override
  Widget build(BuildContext context) {
    TextEditingController text ;
    void initState() {
    super.initState();
    text = TextEditingController();
  }
    return Scaffold(
      appBar: AppBar(title: Text('Welcome To Currenct Converter'),),
      body: Container(color: Colors.blue[100],
      child: Column(
              children: [Expanded(
                              child: Row(children: <Widget>[
          Expanded(
                      child: Column(children: <Widget>[
                 Expanded(
                              child: CupertinoPicker(itemExtent: 50, 
                              onSelectedItemChanged: (index){
                               // print(index);
                             // from = myMap.values.toList().elementAt(index) as double;
                             
                              setState(() {
                                                              from = double.parse(myMap.values.toList()[index]);
                      result = (from*value/to).toString();

                              });
                              print (from);}, 
                              children: myMap.entries.map((e) => Text(e.key)).toList()))
            
            ],
             ),
          ),
        Expanded(
                  child: Column(children: <Widget> [TextField(onChanged: (valuee){
                    value = double.parse(valuee);
                    print (value);
                    setState(() {
                      result = (from*value/to).toString();
                      print(result);
                    });
                    
            
          }  ,controller:text ,)]),
        ),
        Expanded(
                      child: Column(children: <Widget>[
                 Expanded(
                              child: CupertinoPicker(itemExtent: 50, 
                              onSelectedItemChanged: (index){
                               // print(index);
                             // from = myMap.values.toList().elementAt(index) as double;
                              to = double.parse(myMap.values.toList()[index]);
                              setState(() {
                                                      result = (from*value/to).toString();

                              });
                              print (to);}, 
                              children: myMap.entries.map((e) => Text(e.key)).toList()))
            
            ],
             ),
          )
        
        ],),
              ),
         Expanded(child: Text(result.toString()))           ]      ),)
      
    );
  }
}
