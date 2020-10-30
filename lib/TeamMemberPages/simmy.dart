import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimmyPage extends StatefulWidget {
  @override
  _SimmyPageState createState() => _SimmyPageState();
}

class _SimmyPageState extends State<SimmyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Simmy's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
