import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  List<Step> _steps = [
    Step(title: Text("Title 1"), content: Text("This is the context!")),
    Step(title: Text("Title 2"), content: Text("This is the context!")),
    Step(title: Text("Title 3"), content: Text("This is the context!")),
    Step(title: Text("Title 4"), content: Text("This is the context!")),
    Step(title: Text("Title 5"), content: Text("This is the context!")),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stepper(
          steps: _steps,
          currentStep: _index,
          onStepContinue: () {
            setState(() {
              _index < _steps.length - 1 ? _index++ : _index;
            });
          },
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          onStepCancel: () {
            setState(() {
              if (_index > 0) _index--;
            });
          },
        ),
      ),
    );
  }
}
