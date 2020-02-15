import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const[
      {
        'questionText': 'what\'s your fevorite color',
        'answers': ['Red', 'Blue', 'White', 'Green']
      },
      {
        'questionText': 'what\'s your car brand',
        'answers': ['BMW', 'Jeep', 'KIA', 'TATA']
      },
      {
        'questionText': 'what\'s your fevorite hobby',
        'answers': ['Sleep', 'Ride', 'Cricket', 'Fishing']
      }
    ];
  var _questionsIndex = 0;
  void _answerQuestion() {
    if(_questionsIndex<questions.length+1)
    {
      print('we have more questions');
    }
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    
   
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Meeting'),
      ),
      body: _questionsIndex<questions.length ? Column(
        children: [
          Question(
            questions[_questionsIndex]['questionText']
          ),
          ...(questions[_questionsIndex]['answers'] as List<String>).map((answer)
          {
            return Answer(_answerQuestion,answer);

          }).toList()
        ],
      ):Center(child: Text('you did it')),
    )
    );
  }
}
