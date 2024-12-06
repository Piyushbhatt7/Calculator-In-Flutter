import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

 String output = "0";
 String input = "";
 String? operator;
 double? num1;
 double? num2;


 void buttontap(String value){
     setState(() {
        if(value == 'C'){
           
           output = "0";
           input = "";
           num1 = null;
           num2 = null;
           operator = null;     

        }

        else if (value == "="){
           if(num1!= null && operator!= null && input.isNotEmpty){
               num2 = double.parse(input);

               switch (operator){
                  
                  case "+":
                 
                  output = (num1! + num2!).toString();
                  break;

                  case "-":

                  output = (num1! - num2!).toString();
                  break;

                  case "*":

                  output = (num1! * num2!).toString();
                  break;

                  case "/":

                  output = (num1! / num2!).toString();
                  break;

               }

               input = output;
               num1 = null;
               num2 = null;
               operator = null;

           }

        }

        else if(value == "+" || value == "-" || value== "/"){

          num1 = double.parse(input);
          operator = value;
          input = "";

        }

        else{

          input += value;
          output = input;
        }
     });
 }


 Widget _buildButton(String value) {

     return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20)
          ),
          
          onPressed: (){

          buttontap(value);

        }, child: Text(value, style: TextStyle(fontSize: 24),
        )
        ), 
        ),
        
        );
 }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
 
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: Text(output, style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            ),

            Column(
              children: [
                
                  Row(
                children: ["7", "8", "9", "÷"].map((value) => _buildButton(value)).toList(),
              ),
              Row(
                children: ["4", "5", "6", "×"].map((value) => _buildButton(value)).toList(),
              ),
              Row(
                children: ["1", "2", "3", "-"].map((value) => _buildButton(value)).toList(),
              ),
              Row(
                children: ["C", "0", "=", "+"].map((value) => _buildButton(value)).toList(),
                )
              ],
            )
        ],
      ),
      
    );
  }
}