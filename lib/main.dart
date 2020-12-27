import 'package:flutter/material.dart';

import 'Quez.dart';
import 'Result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var mScore = 0;

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  int _answerQuestion(int score) {
    mScore += score;
    print("score  = $mScore");
    setState(() {
      //if (_questionIndex < questions.length - 1) {
      _questionIndex = _questionIndex + 1;
      // } else {
      //   _questionIndex = 0;
      // }
    });
    print(_questionIndex);
    return 0;
  }

  void resetQ() {
    setState(() {
      _questionIndex = 0;
      mScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quez(_questionIndex, _answerQuestion, questions)
            : Result("You did it Your Score= ${mScore} ", ()=> resetQ()),
      ),
    );
  }
}
