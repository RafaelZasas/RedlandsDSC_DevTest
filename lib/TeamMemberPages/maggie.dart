import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaggiePage extends StatefulWidget {
  @override
  _MaggiePageState createState() => _MaggiePageState();
}

class _MaggiePageState extends State<MaggiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Maggie's Page",
            style: TextStyle(
              fontSize: 50,
              color: Colors.purpleAccent[400]
            ),
          ),
        ),
      ),
    );
  }
}
