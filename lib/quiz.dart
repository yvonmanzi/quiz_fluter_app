import 'question.dart';

class Quiz {
  List<Question> _questions;
  int _currentQuestionIndex = -1;
  int _score = 0;

  Quiz(this._questions) {
    _questions.shuffle();
  }

  int get score => _score;

  int get currentQuestionIndex => _currentQuestionIndex + 1;

  int get length => _questions.length;

  Question get nextQuestion {
    if (++_currentQuestionIndex >= _questions.length) return null;
    return _questions[_currentQuestionIndex];
  }

  void _answer(bool isCorrect) {
    if (isCorrect) _score++;
  }

  List<Question> get questions => _questions;
}
