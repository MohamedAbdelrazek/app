import 'package:flutter/cupertino.dart';

import 'answer.dart';
import 'question.dart';

class Quez extends StatelessWidget {
  final questionIndex;
  final answerQuestion;
  final questions;

  Quez(this.questionIndex, this.answerQuestion, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...((questions[questionIndex]['answers']))
            .map((e) => Answer(() => answerQuestion(e["score"]), e["text"]))
      ],
    );
  }
}
