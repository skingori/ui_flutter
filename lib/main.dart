import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
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
    print(test_);
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
              ElevatedButton(
                  onPressed: answerQuestion, child: Question(question[test_])),
            ],
          ),
        ),
      ),
    );
  }
}
