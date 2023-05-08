import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class Quizmain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizmainState();
  }
}

class _QuizmainState extends State<Quizmain> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 3},
        {'text': 'Blue', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 3},
        {'text': 'Horse', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favourite celebrity?',
      'answers': [
        {'text': 'Tom Cruise', 'score': 10},
        {'text': 'Shah Rukh Khan', 'score': 3},
        {'text': 'Kartik Aryan', 'score': 1}
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
