import 'package:flutter/material.dart';

import './Question.dart';
import './AnswerButton.dart';
import 'QuestionModel.dart';

// ignore: must_be_immutable
class QuizQuestion extends StatelessWidget {
  final int? questionIndex;
  final List<QuestionModel>? questions;
  final Function? questionAnswer;

  const QuizQuestion({
    super.key,
    @required this.questionIndex,
    @required this.questions,
    @required this.questionAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions?[questionIndex as int].questionText), // Question
        ...?questions?[questionIndex as int].answers!.map(
          (answer) => AnswerButton(
            answer["text"] as String,
            () => questionAnswer!(answer["score"]),
          ),
        ), // Answer buttons
      ],
    );
  }
}
