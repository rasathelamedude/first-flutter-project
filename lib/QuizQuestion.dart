import 'package:flutter/material.dart';

import './Question.dart';
import './AnswerButton.dart';
import 'QuestionModel.dart';

// ignore: must_be_immutable
class QuizQuestion extends StatelessWidget {
  List<QuestionModel>? questions;
  var questionIndex;
  VoidCallback? questionAnswer;

  QuizQuestion({
    super.key,
    this.questionIndex,
    this.questions,
    this.questionAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions?[questionIndex].questionText), // Question
        ...?questions?[questionIndex].answers!.map(
          (answer) => AnswerButton(answer, questionAnswer),
        ), // Answer buttons
      ],
    );
  }
}
