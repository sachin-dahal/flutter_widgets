import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Tooltip(
            message: "Lets code flutter.",
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                "Press for a tip",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
