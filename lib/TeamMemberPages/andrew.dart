import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AndrewPage extends StatefulWidget {
  @override
  _AndrewPageState createState() => _AndrewPageState();
}

class _AndrewPageState extends State<AndrewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Andrew Yip's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}