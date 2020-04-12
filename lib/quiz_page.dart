import 'package:flutter/material.dart';

import 'answer_button.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            AnswerButton(Colors.greenAccent, "True"),
            AnswerButton(Colors.redAccent, "False")
          ],
        )
      ],
    );
  }
}
