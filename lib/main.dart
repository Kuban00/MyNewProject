import 'package:flutter/material.dart';
import 'package:hello/demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      theme:  ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: (),
    );
  }
}
