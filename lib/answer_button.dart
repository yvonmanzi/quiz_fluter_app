import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Color _color;
  final String _buttonName;
  AnswerButton(this._color, this._buttonName);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
      color: _color,
      child: InkWell(
        onTap: () {
          print("false is pressed!");
        },
        child: Center(
          child: Container(
            child: Text(_buttonName),
          ),
        ),
      ),
    ));
  }
}
