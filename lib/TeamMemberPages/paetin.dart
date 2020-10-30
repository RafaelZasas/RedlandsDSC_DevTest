import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaetinPage extends StatefulWidget {
  @override
  _PaetinPageState createState() => _PaetinPageState();
}

class _PaetinPageState extends State<PaetinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Paetin's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
