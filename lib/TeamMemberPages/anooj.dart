import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnoojPage extends StatefulWidget {
  @override
  _AnoojPageState createState() => _AnoojPageState();
}

class _AnoojPageState extends State<AnoojPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Anooj Patel",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),

    );
  }
}