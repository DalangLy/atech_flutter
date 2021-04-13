import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'what is your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'what is your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'who is your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if(_questionIndex < questions.length){
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Atech Flutter'),
        ),
        body: new Column(
          children: [
            new Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
