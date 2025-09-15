import 'package:flutter/material.dart';

import './QuestionModel.dart';
import './Result.dart';
import 'QuizQuestion.dart';

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
  int _questionIndex = 0;
  int _totalScore = 0;

  static const List<QuestionModel> _questions = [
    QuestionModel(
      questionText: "What is your favorite color?",
      answers: [
        {"text": "White", "score": 1},
        {"text": "Red", "score": 2},
        {"text": "Blue", "score": 3},
      ],
    ),
    QuestionModel(
      questionText: "What is your favorite animal?",
      answers: [
        {"text": "Cat", "score": 1},
        {"text": "Dog", "score": 2},
        {"text": "Bird", "score": 3},
      ],
    ),
  ]; // Use a class to instantiate questions and answers; Map can be used as well;

  // Button answer handler;
  void _questionAnswer(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App!")),
        body: _questionIndex < _questions.length
            ? QuizQuestion(
                questionAnswer: _questionAnswer,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
