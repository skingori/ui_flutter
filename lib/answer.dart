import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(1),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          selectHandler();
        },
        child: Text(answerText),
      ),
    );
  }
}
