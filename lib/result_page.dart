import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmiResult;

  ResultPage({required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 163, 106, 233),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Your BMI is ${bmiResult.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
