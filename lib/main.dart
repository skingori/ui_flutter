import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  void questions() {
    print('What is your name?');
  }

  var questions_ = [
    'What is your name?',
    'What is your favorite color?',
    'What is your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: questions,
              child: const Text('Questions'),
            ),
          ],
        ),
        bottomNavigationBar: FloatingActionButton(
          onPressed: questions,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
