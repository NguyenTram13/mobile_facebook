// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepProgressExample extends StatefulWidget {
  const StepProgressExample({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  @override
  _StepProgressExampleState createState() => _StepProgressExampleState();
}

class _StepProgressExampleState extends State<StepProgressExample> {
  double _currentStep = 1.0; // Start in the middle (0.0 to 1.0)
  int _totalSteps = 100; // Total number of steps

  @override
  Widget build(BuildContext context) {
    // Calculate the current step based on the double value
    int currentStep = (_currentStep).round();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context)
              .size
              .width, // Make the container full width
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center, // Align to the right
            children: [
              Transform.rotate(
                angle: 180 * 3.14159265359 / 180, // Rotate by 180 degrees
                child: StepProgressIndicator(
                  totalSteps: _totalSteps,
                  currentStep: currentStep,
                  size: 100,
                  padding: 2,
                  roundedEdges: Radius.circular(10),
                  direction: Axis.horizontal,
                  selectedColor: Colors.blue,
                  unselectedColor: Colors.grey,
                  customSize: (index, _) => (index + 1),
                ),
              ),
              StepProgressIndicator(
                totalSteps: _totalSteps,
                currentStep: currentStep,
                size: 100,
                padding: 2,
                roundedEdges: Radius.circular(10),
                direction: Axis.horizontal,
                selectedColor: Colors.blue,
                unselectedColor: Colors.grey,
                customSize: (index, _) => (index + 1),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text('Current Step: $currentStep'),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Simulate changing the current step (move to the right)
            setState(() {
              _currentStep = (_currentStep + 1);
            });
          },
          child: Text('Next Step'),
        )
      ],
    );
  }
}
