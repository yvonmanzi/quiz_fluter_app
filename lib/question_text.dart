import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override
  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText>
    with SingleTickerProviderStateMixin {
  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override
  void initState() {
    super.initState();
    _fontSizeAnimationController =
        new AnimationController(duration: Duration(seconds: 1), vsync: this);
    _fontSizeAnimation = CurvedAnimation(
        parent: _fontSizeAnimationController, curve: Curves.linear);
    _fontSizeAnimation.addListener(() {
      this.setState(() {});
    });
    _fontSizeAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: Padding(
        padding: new EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: Text(
            "Statement" +
                widget._questionNumber.toString() +
                ": " +
                widget._question,
            style: TextStyle(fontSize: _fontSizeAnimation.value * 15),
          ),
        ),
      ),
    );
  }
}
