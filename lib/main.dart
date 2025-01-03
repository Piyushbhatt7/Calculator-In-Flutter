
import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());  
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Application',
    //theme: ThemeData.dark(), // I have se the theme as dark
      theme: ThemeData(
        primarySwatch: Colors.blue,    // you can also use ThemeData to set color according to you
        textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
            
        ),
      ),
      

      home: Calculator(),   
      
    );
    
  }
}

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       //title: Text('Flutter Main Screen'),

      ),  

    );
  }
}