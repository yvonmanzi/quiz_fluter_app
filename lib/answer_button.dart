import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Color _color;
  final VoidCallback _onTap;

  AnswerButton(this._color, this._onTap);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
      color: _color,
      child: InkWell(
        onTap: _onTap,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5.0)),
            child: Text(
              _color == Colors.greenAccent ? "True" : "False",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
