import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? selectHandler;

  const AnswerButton(this.buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        child: Text(buttonText!),
      ),
    );
  }
}
