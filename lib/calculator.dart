import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

 String output = "0";
 String? input = "";
 String? operator;
 double? num1;
 double? num2;


 void buttontap(String value){
     setState(() {
        if(value == 'C'){
           
           output = "0";
           input = "";
           
        }
     });
 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),

      ),

      
    );
  }
}