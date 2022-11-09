import 'package:flutter/material.dart';

class Demo extends StatefulWidget{
  @override 
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? _result;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text('BMI Calculator'),
        centerTitle:  true,
        backgroundColor: Colors.deepPurple,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'height in cm',
                icon: Icon(Icons.trending_up),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),

            SizedBox(height: 18),
            RaisedButton(
              color: Colors.pinkAccent,
              child: Text(
                "Calculate",
                style:  TextStyle(color: Colors.white),
              ),
              onPressed: calculateBMI,
            ),

            SizedBox(height: 18),
            Text(
              _result == null ? "Enter Values":"${_result!.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25.5,
                fontWeight: FontWeight.w500,
              ),
            ),


          ],
        ),
      ),
    );
  }
