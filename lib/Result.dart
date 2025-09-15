import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  String? resultText;
  int? totalScore;

  // ignore: use_key_in_widget_constructors
  Result(this.resultText, this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(resultText!), Text("You scored: $totalScore")],
    );
  }
}
