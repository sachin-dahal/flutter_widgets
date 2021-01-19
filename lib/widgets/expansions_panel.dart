import 'package:flutter/material.dart';

class ExpansionPanelWidget extends StatefulWidget {
  @override
  _ExpansionPanelWidgetState createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.symmetric(horizontal: 20.0),
              expansionCallback: (index, bool value) {
                setState(() {
                  _value = !value;
                });
              },
              children: [
                ExpansionPanel(
                  isExpanded: _value,
                  headerBuilder: (context, value) {
                    return Text("Hello 1");
                  },
                  body: Container(
                    color: Colors.red[100],
                    height: 100.0,
                    child: Text("Lable 1"),
                  ),
                ),
                ExpansionPanel(
                  isExpanded: _value,
                  headerBuilder: (context, value) {
                    return Text("Hello 2");
                  },
                  body: Container(
                    color: Colors.green[100],
                    height: 100.0,
                    child: Text("Lable 2"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
