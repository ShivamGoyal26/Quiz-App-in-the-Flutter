import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    "what's your favorite color",
    "what's your favorite city",
    "what's your favorite car"
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   "You have choosen the answer 1",
    //   "You have choosen the answer 2",
    //   "You have choosen the answer 3"
    // ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: <Widget>[
              Question(
                questions[_questionIndex],
              ),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
