import 'package:flutter/material.dart';

class PopUpMenuWidget extends StatefulWidget {
  @override
  _PopUpMenuWidgetState createState() => _PopUpMenuWidgetState();
}

class _PopUpMenuWidgetState extends State<PopUpMenuWidget> {
  String _value = "";

  List<PopupMenuEntry> _popUpMenu = [
    PopupMenuItem(
      child: Text("Boy"),
      value: "Boy",
    ),
    PopupMenuItem(
      child: Text("Girl"),
      value: "Girl",
    ),
    PopupMenuItem(
      child: Text("Old Man"),
      value: "Old Man",
    ),
    PopupMenuItem(
      child: Text("Old Woman"),
      value: "Old Woman",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I am a " + _value,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (context) {
                  return _popUpMenu;
                },
                onSelected: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
