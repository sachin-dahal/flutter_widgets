import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              label: Text("Home"),
              deleteIcon: Icon(Icons.home),
              avatar: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text("C"),
              ),
            ),
            SizedBox(height: 10.0),
            Chip(
              label: Text("Label"),
              deleteIcon: Icon(Icons.home),
            ),
            SizedBox(height: 10.0),
            Chip(
              label: Text("Title"),
              deleteIcon: Icon(Icons.home),
            )
          ],
        ),
      ),
    );
  }
}
