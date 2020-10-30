import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShlokPage extends StatefulWidget {
  @override
  _ShlokPageState createState() => _ShlokPageState();
}

class _ShlokPageState extends State<ShlokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Shlok's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
