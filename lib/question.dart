import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28,color: Color.fromRGBO(99, 00, 86, 1.0) ),
        textAlign: TextAlign.center,
        
        
        
      ),
    );
  }
}
