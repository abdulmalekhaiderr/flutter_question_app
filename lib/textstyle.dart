import 'package:flutter/material.dart';

class TextStyle2 extends StatelessWidget {
 final TextStyle textStyle;
 final String text;
  TextStyle2(this.textStyle,this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text ,style: textStyle,);
  }
}
