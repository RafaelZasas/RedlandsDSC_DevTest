import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JustinPage extends StatefulWidget {
  @override
  _JustinPageState createState() => _JustinPageState();
}

class _JustinPageState extends State<JustinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Justin's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
