import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SlidersAndIndicators extends StatefulWidget {
  @override
  _SlidersAndIndicatorsState createState() => _SlidersAndIndicatorsState();
}

class _SlidersAndIndicatorsState extends State<SlidersAndIndicators> {
  double _value = 0.0;

  Function onChanged(double value) {
    setState(() => _value = value);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _value.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: LinearProgressIndicator(
                value: _value,
                minHeight: 5.0,
                backgroundColor: Colors.greenAccent,
                valueColor: AlwaysStoppedAnimation(Colors.red),

              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CircularProgressIndicator(
                value: _value,
                backgroundColor: Colors.greenAccent,
                valueColor: AlwaysStoppedAnimation(Colors.red),

              ),
            ),
            SizedBox(height: 20.0),
            Slider(
              value: _value,
              onChanged: onChanged,
              activeColor: Colors.red,
              inactiveColor: Colors.green,
              
            ),
          ],
        ),
      ),
    );
  }
}
