import 'package:flutter/material.dart';

class Answerr extends StatelessWidget {
  final String answertext;
  final Function xx;
  

  const Answerr(this.answertext, this.xx,);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        
          onPressed: () => xx(),
          child: Text(answertext),
          focusColor: Colors.amberAccent,
          hoverColor: Colors.deepOrange),
    );
  }
}
