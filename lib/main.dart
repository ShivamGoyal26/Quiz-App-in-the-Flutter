import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  

  void answerQuestion() {
    questionIndex =questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "You have choosen the answer 1",
      "You have choosen the answer 2",
      "You have choosen the answer 3"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: <Widget>[
              Text(
                questions[questionIndex],
              ),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
