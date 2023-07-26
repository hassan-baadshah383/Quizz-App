import 'package:flutter/material.dart';

import 'quizz.dart';
import 'result.dart';

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
  int totalScore = 0;

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void reset() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 20},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 10},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 20},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Lion', 'score': 15}
      ],
    },
    {
      'questionText': 'Who\'s your favorite actor in bollywood?',
      'answers': [
        {'text': 'Shahrukh Khan', 'score': 10},
        {'text': 'Salman Khan', 'score': 15},
        {'text': 'Amir Khan', 'score': 7},
        {'text': 'Vidyut Jammwal', 'score': 10}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Check your personality'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quizz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(totalScore, reset),
      ),
    );
  }
}
