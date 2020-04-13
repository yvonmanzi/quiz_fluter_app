class Question {
  final bool _answer;
  final String _question;

  Question(this._answer, this._question);

  String get question => _question;

  bool get answer => _answer;
}
