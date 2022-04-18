import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var test_ = 0;
  void answerQuestion() {
    setState(() {
      if (test_ == 2) {
        test_ = 0;
      } else {
        test_ = test_ + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite food?',
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Question(question[test_]),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Answer(answerQuestion, question[test_]),
            ],
          ),
        ),
      ),
    );
  }
}
