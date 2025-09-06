import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  String? resultText;

  // ignore: use_key_in_widget_constructors
  Result(this.resultText);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultText!));
  }
}
