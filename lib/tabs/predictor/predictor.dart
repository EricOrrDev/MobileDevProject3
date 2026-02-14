import 'package:flutter/material.dart';
import 'dart:math';

class PredictorTab extends StatefulWidget {
  const PredictorTab({super.key});

  @override
  State<PredictorTab> createState() => _PredictorTabState();
}

class _PredictorTabState extends State<PredictorTab> {
  final List<String> _answers = const [
    'It is certain.',
    'Without a doubt.',
    'Yes, definitely.',
    'Reply hazy, try again.',
    'Ask again later.',
    'Don\'t count on it.',
    'My sources say no.',
    'Very doubtful.',
  ];

  String _currentAnswer = 'Tap the ball for a prediction!';
  final Random _random = Random();

  void _generateAnswer() {
    setState(() {
      _currentAnswer = _answers[_random.nextInt(_answers.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'She Loves Me? She Loves Me Not?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40.0),
            GestureDetector(
              onTap: _generateAnswer,
              child: const Text(
                'Ask a question, click me!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              _currentAnswer,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
