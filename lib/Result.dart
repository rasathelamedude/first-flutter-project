import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  final int? totalScore;

  // ignore: use_key_in_widget_constructors
  const Result(this.totalScore);

  String get resultPhrase {
    String? phrase;

    if (totalScore! < 3) {
      phrase = "You are decent";
    } else {
      phrase = "You are amazing";
    }

    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$resultPhrase. Your score is: $totalScore",
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
