import 'package:app01/quiz.dart';
import 'package:app01/result.dart';
import 'package:flutter/material.dart';

// main run
void main() => runApp(MyApp());

// applation
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Color b = Colors.black;
Color w = Colors.white;

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int toalt = 0;
  int? num1, num0, num2;

  bool isSwitch = false;

  void answerQuestion(int score) {
    if (_questionIndex == 0) {
      num0 = score;
    } else if (_questionIndex == 1) {
      num1 = score;
    } else if (_questionIndex == 2) {
      num2 = score;
    }

    toalt += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    print("num $num0");
    print("num1 $num1");
    print("num2 $num2");
    print('==================');
    print("== $toalt");
  }

  void restart() {
    setState(() {
      toalt = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
      _questionIndex = 0;
    });
  }

  final List<Map<String, Object>> question = [
    {
      "question": "what's your favorite phon?",
      "answer": [
        {"text": 'rt20', "scroll": 10},
        {"text": 'rt24', "scroll": 20},
        {"text": 'iphone', "scroll": 30},
        {"text": 'iphone pro', "scroll": 40}
      ]
    },
    {
      "question": "what's your favorite color??",
      "answer": [
        {"text": 'black', "scroll": 10},
        {"text": 'white', "scroll": 20},
        {"text": 'yellow', "scroll": 30},
        {"text": 'blue', "scroll": 40}
      ]
    },
    {
      "question": "what's your favorite animal?",
      "answer": [
        {"text": 'ribbt', "scroll": 10},
        {"text": 'lion', "scroll": 20},
        {"text": 'elephant', "scroll": 30},
        {"text": 'tiger', "scroll": 40}
      ]
    },
  ];

  String answer = "answer1";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
          actions: [
            Switch(
                activeColor: Colors.black,
                //  activeTrackColor:Colors.black,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.white,
                value: isSwitch,
                onChanged: (val) {
                  setState(() {
                    isSwitch = val;
                    if (isSwitch == true) {
                      b = Colors.white;
                      w = Colors.black;
                    }
                    if (isSwitch == false) {
                      w = Colors.white;
                      b = Colors.black;
                    }
                    ;
                  });

                  print(val);
                })
          ],
        ),
        body: Container(
          color: b,
          child: ListView(children: [
            Container(
              child: _questionIndex < question.length
                  ? Quiz(
                      questionIndex: _questionIndex,
                      question: question,
                      answerquestion: answerQuestion)
                  : Result(
                      restart: restart,
                      text: toalt,
                    ),
            ),
            FloatingActionButton(
              onPressed: () {
                if (_questionIndex == 1) {
                  print("toalt num====$toalt");
                  toalt = -num0!;
                } else if (_questionIndex == 2) {
                  print("num2 == $toalt");
                  toalt -= num1!;
                } else if (_questionIndex == 3) {
                  toalt -= num2!;
                }
                setState(() {
                  if (_questionIndex > 0) _questionIndex--;
                });
                print("resuilt toatl:$toalt");
                print("Questionindex $_questionIndex");
              },
              child: Icon(Icons.arrow_back),
            )
          ]),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'textstyle.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "eng abdulmalek haidar ",
//       theme: ThemeData(
//         primaryColor: Colors.green,
//         primarySwatch: Colors.blue,
//       ),
//       home: page(),
//     );
//   }
// }

// class page extends StatefulWidget {
//   @override
//   State<page> createState() => pageState();
// }

// class pageState extends State<page> {
//   Color w = Colors.white;
//   Color b = Colors.black;
//   Color bl = Colors.blue;
//   Color g = Colors.green;
//   Color br = Colors.brown;
//   Color r = Colors.red;
//   bool tr = true;
//   String s = "fillname";
//   int age = 0;
//   TextEditingController mycotroller = TextEditingController();

//   TextStyle style = TextStyle(
//     color: Colors.green,
//   );

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("them widget"),
//         // backgroundColor: Colors.yellow,
//       ),
//       body: Container(
//         // height: double.infinity,
//         color: b,
//         alignment: Alignment.center,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     width: 400,
//                     height: 400,
//                     color: w,
//                     child: Column(
//                       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                          Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 Text(
//                               "test",
//                               style: style,
//                             ),
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                             Text(
//                               "test",
//                               style: style,
//                             ),

//                               ],
//                             ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                             Text(
//                               "test",
//                               style: style,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               TextStyle2(style, "abood"),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 child: TextField(
//                   style: TextStyle(color: w),
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(
//                             width: 10,
//                             color: bl,
//                           )),
//                       hintText: "enter your birth year ",
//                       hintStyle: TextStyle(fontSize: 30, color: bl),
//                       labelStyle: TextStyle(fontSize: 30, color: r),
//                       label: Text("birth year")),
//                   controller: mycotroller,
//                   keyboardType: TextInputType.number,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: TextField(
//                   style: TextStyle(color: bl),
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(color: br, width: 10.0)),
//                       labelText: "password2",
//                       labelStyle: TextStyle(fontSize: 30, color: bl),
//                       hintText: "enter password",
//                       hintStyle: TextStyle(fontSize: 30, color: r),
//                       suffix: IconButton(
//                         color: bl,
//                         onPressed: () => setState(() {
//                           tr = !tr;
//                           print(tr);
//                         }),
//                         icon:
//                             Icon(tr ? Icons.visibility : Icons.visibility_off),
//                       )),
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: tr,
//                 ),
//               ),
//               Text(
//                 "age your $age years old ",
//                 style: TextStyle(color: bl, fontSize: 30),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               FloatingActionButton(
//                 onPressed: () {
//                   setState(() {
//                     age = DateTime.now().year - int.parse(mycotroller.text);
//                     print("$age");
//                   });
//                 },
//                 child: Text(
//                   "value",
//                   style: TextStyle(color: bl),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         label: Text("add"),
//         onPressed: () {
//           setState(() {
//             b = b == Colors.black ? Colors.white : Colors.black;
//             // w = w == Colors.white ? Colors.black : Colors.white;
//           });
//         },
//         splashColor: Colors.amber,
//         hoverColor: Colors.red,
//         foregroundColor: const Color.fromARGB(255, 71, 21, 121),
//         icon: Icon(Icons.add),
//       ),
//     );
//   }
// }
