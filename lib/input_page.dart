import 'package:flutter/material.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  void calculateBMI() {
    final double weight = double.parse(weightController.text);
    final double height = double.parse(heightController.text) / 100; // Convert cm to meters
    final double bmi = weight / (height * height);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(bmiResult: bmi),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weightController,
              decoration: InputDecoration(
                labelText: 'Enter Weight (kg)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            TextField(
              controller: heightController,
              decoration: InputDecoration(
                labelText: 'Enter Height (cm)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
