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
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var currentQuestion = 0;

  void answerQuestion() {
    setState(() {
      currentQuestion += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App!")),
        body: Column(
          children: [
            Text(questions[currentQuestion]),
            ElevatedButton(onPressed: answerQuestion, child: Text("Black")),
            ElevatedButton(
              onPressed: () => print("Answer 2 chosen"),
              child: Text("Green"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Answer 3 chosen!");
              },
              child: Text("Blue"),
            ),
          ],
        ),
      ),
    );
  }
}
