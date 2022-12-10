import 'package:flutter/material.dart';
import './clothes_question.dart';
import './clothes_answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget>  createState(){
    return MyAppState();
  }
}


class MyAppState extends State<MyApp> {

  void iWasTapped(){
    setState(() {
        questionIndex +=1;
      }
    );
    print('I was tapped');
  }
  
  var questions = [
   {'question': "Select clothes type:", 'answer':['jeans','shirts','skirts','dresses']},
   {'question': "Select color:", 'answer':['red','blue','violet','green']},
   {'question': "Select size:", 'answer':['XS','S','M','XL']},
    ];
  var questionIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      
      home: Scaffold(appBar: AppBar(title: Text("Hello World")),
      body: Column(children: [
        ClothesQuestion(questions[questionIndex]),
        ClothesAnswer(iWasTapped,"Tap me 1"),
        ClothesAnswer(iWasTapped,"Tap me 2"),
        ClothesAnswer(iWasTapped,"Tap me 3"),
      ],),
      ),
    );
  }
}


//32:35