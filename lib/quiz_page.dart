import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/score_overlay.dart';

import 'answer_button.dart';
import 'question_text.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool overLayShouldBeVisible = false;
  String questionText;
  int questionNumber;
  bool isCorrect;
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question(false, "Elon is human"),
    new Question(true, "flutter is beyond awesome"),
    new Question(true, "family guy is the best")
  ]);

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.currentQuestionIndex;
  }

  void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      overLayShouldBeVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          children: <Widget>[
            AnswerButton(Colors.greenAccent, () {
              handleAnswer(true);
            }),
            QuestionText(questionText, questionNumber),
            AnswerButton(Colors.redAccent, () {
              handleAnswer(false);
            })
          ],
        ),
        overLayShouldBeVisible ? AnswerOverlay(isCorrect) : Container(),
      ],
    );
  }
}
