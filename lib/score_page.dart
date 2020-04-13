import 'package:flutter/material.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final int totalQuestion;

  ScorePage(this.score, this.totalQuestion);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Your score",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
          ),
          Text(
            "$score/$totalQuestion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
          ),
          IconButton(
            onPressed: () {
              print(
                "cool",
              );
            },
            icon: Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
