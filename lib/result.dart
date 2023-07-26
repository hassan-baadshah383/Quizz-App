import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int totalScore;
  final Function reset;

  Result(this.totalScore, this.reset);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String get result {
    String r = '';
    if (widget.totalScore <= 20) {
      r = 'You are innocent';
    } else if (widget.totalScore < 30) {
      r = 'You are a good person';
    } else if (widget.totalScore < 38) {
      r = 'You are a strange person';
    } else {
      r = 'You are a bad person';
    }
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              widget.reset();
            },
            style: TextButton.styleFrom(
                textStyle: const TextStyle(color: Colors.blue)),
            child: const Text('Restart Quizz'),
          )
        ],
      ),
    );
  }
}
