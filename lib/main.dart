import 'package:flutter/material.dart';

import './Question.dart';
import './AnswerButton.dart';

// Main Method;
void main() => runApp(MyApp());

// Main Application Widget;
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Main Application's State;
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _questionAnswer() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What is your favorite animal?",
    ];

    var answers = [
      ["Blue", "White", "Red"],
      ["Cat", "Dog", "Bird"],
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App!")),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            AnswerButton(answers[_questionIndex][0], _questionAnswer), // passing a callback pointer as an argument
            AnswerButton(answers[_questionIndex][1], _questionAnswer),
            AnswerButton(answers[_questionIndex][2], _questionAnswer),
          ],
        ),
      ),
    );
  }
}
