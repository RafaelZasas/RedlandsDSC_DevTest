import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GaviPage extends StatefulWidget {
  @override
  _GaviPageState createState() => _GaviPageState();
}

class _GaviPageState extends State<GaviPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Gavi",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}