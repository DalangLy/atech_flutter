import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favourite color?',
      'what is your favourite animal?'
    ];
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Atech Flutter'),
        ),
        body: new Column(
          children: [
            new Question(questions[_questionIndex]),
            RaisedButton(
                child: new Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
                child: new Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(
              child: new Text('Answer 3'),
              onPressed: () => print('hello world'),
            )
          ],
        ),
      ),
    );
  }
}
