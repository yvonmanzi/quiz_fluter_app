import 'dart:math';

import 'package:flutter/material.dart';

class AnswerOverlay extends StatefulWidget {
  final bool _isCorrect;

  AnswerOverlay(this._isCorrect);

  @override
  _AnswerOverlayState createState() => _AnswerOverlayState();
}

class _AnswerOverlayState extends State<AnswerOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = AnimationController(
        duration: Duration(milliseconds: 5000), vsync: this);
    _iconAnimation = CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.elasticOut);
    _iconAnimation.addListener(() {
      this.setState(() {});
    });
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black54,
        child: InkWell(
          onTap: () {
            print('you tapped the overlay');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Transform.rotate(
                  angle: _iconAnimation.value * 2 * pi,
                  child: Icon(
                    widget._isCorrect ? Icons.done : Icons.clear,
                    size: _iconAnimation.value * 80,
                  ),
                ),
              ),
              new Padding(padding: EdgeInsets.only(bottom: 20.0)),
              new Text(
                widget._isCorrect ? "correct!" : "wrong!",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ],
          ),
        ));
  }
}
