import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MalachiPage extends StatefulWidget {
  @override
  _MalachiPageState createState() => _MalachiPageState();
}

class _MalachiPageState extends State<MalachiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Malachi's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
