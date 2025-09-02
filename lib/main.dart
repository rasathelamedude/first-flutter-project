import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Refactored from a stateless widget to a statefull widget;
// We need two classes for statefull widgets, one that can be re-built (Widget), another that is persistant (WidgetState);
// Generally a state is data or information that your widget uses;
// Statefull => Internal state can be altered;
// Stateless => Internal state can't be changed;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App!")),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(onPressed: _questionAnswer, child: Text("Answer 1")),
            ElevatedButton(onPressed: _questionAnswer, child: Text("Answer 2")),
            ElevatedButton(onPressed: _questionAnswer, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
