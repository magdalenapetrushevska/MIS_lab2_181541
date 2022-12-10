import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget{

  String answerText;
  Function tapped;
  ClothesAnswer(this.tapped, this.answerText);


  @override
  Widget build(BuildContext context){
    return
    ElevatedButton(child: Text(answerText), onPressed: null,
          );
  }

}

//29:40