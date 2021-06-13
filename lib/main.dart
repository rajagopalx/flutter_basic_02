import 'package:flutter/material.dart';

void main() => runApp(Sample());

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stepper(),
    );
  }
}

class Stepper extends StatefulWidget {
  @override
  _StepperState createState() => _StepperState();
}

class _StepperState extends State<Stepper> {
  int counter = 0;

  _stepperIncrementFunction() {
    print("Increment...");
    setState(() {
      counter += 1;
    });
  }

  _stepperDecrementFunction() {
    print("Decrement...");
    setState(() {
      counter -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Stateful Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$counter points"),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: _stepperDecrementFunction,
              child: Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: _stepperIncrementFunction,
              child: Icon(Icons.add),
            ),
          ],
        ));
  }
}
