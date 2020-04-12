import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //also what the hell is material widget? seems like a Container
    //like a blank page.
    return Material(
      color: Colors.green,
      //what the hell is an inkwell? it's maybe sensitive to user actions.?
      //it also seems like it is animated.
      child: InkWell(
        onTap: () {
          print("we tapped the page");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Let's quiz",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Tap to start",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
