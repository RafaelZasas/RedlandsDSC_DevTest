import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RaffPage extends StatefulWidget {
  @override
  _RaffPageState createState() => _RaffPageState();
}

class _RaffPageState extends State<RaffPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Raffs Page",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
