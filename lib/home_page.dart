import 'package:flutter/material.dart';
import 'input_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.medical_services, size: 100, color: const Color.fromARGB(255, 67, 160, 232)),
            SizedBox(height: 20),
            Text(
              'BMI Calculator',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputPage()),
                );
              },
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
