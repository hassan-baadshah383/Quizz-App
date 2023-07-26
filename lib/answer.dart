import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(color: Colors.white)),
        onPressed: () {
          widget.selectHandler();
        },
        child: Text(widget.answerText),
      ),
    );
  }
}
