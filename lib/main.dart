import 'package:flutter/material.dart';

import './Question.dart';
import './AnswerButton.dart';
import './QuestionModel.dart';

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
    // Use a class to instantiate questions and answers; Map can be used as well;
    const List<QuestionModel> _questions = [
      QuestionModel(
        questionText: "What is your favorite color?",
        answers: ["White", "Red", "Blue"],
      ),
      QuestionModel(
        questionText: "What is your favorite animal?",
        answers: ["Cat", "Dog", "Bird"],
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App!")),
        body: Column(
          children: [
            Question(_questions[_questionIndex].questionText), // Question
            ..._questions[_questionIndex].answers!.map(
              (answer) => AnswerButton(answer, _questionAnswer),
            ), // Answer buttons
          ],
        ),
      ),
    );
  }
}
