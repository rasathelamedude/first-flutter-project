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
  var questionIndex = 0;
  static const List<QuestionModel> questions = [
    QuestionModel(
      questionText: "What is your favorite color?",
      answers: ["White", "Red", "Blue"],
    ),
    QuestionModel(
      questionText: "What is your favorite animal?",
      answers: ["Cat", "Dog", "Bird"],
    ),
  ]; // Use a class to instantiate questions and answers; Map can be used as well;

  // Button answer handler;
  void questionAnswer() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App!")),
        body: questionIndex < questions.length
            ? QuizQuestion(
                questionAnswer: questionAnswer,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result("You did it"),
      ),
    );
  }
}
