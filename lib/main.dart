import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complex Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double number1 = 0;
  double number2 = 0;
  double result = 0;

  double complexCalculation(double a, double b) {
    return math.sin(a) + math.cos(b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Number 1'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  number1 = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  number2 = double.parse(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = complexCalculation(number1, number2);
                });
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
