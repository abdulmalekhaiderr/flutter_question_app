import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function restart;
  final int text;

  const Result({super.key, required this.restart, required this.text});
  String get resuiltph {
    String restulttext;
    if (text >= 70) {
      restulttext = "you are wasow";
    } else if (text >= 40) {
      restulttext = "pretty likabel";
      print('===========');
      print(restulttext);
    } else {
      restulttext = "you are bad";
    }
    return restulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resuiltph,
            style: TextStyle(color: w),
          ),
          Text("value =: $text", style: TextStyle(color: w) ),
          FloatingActionButton(
            onPressed: () => restart(),
            child: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
