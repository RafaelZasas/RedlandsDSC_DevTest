import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KimmyPage extends StatefulWidget {
  @override
  _KimmyPageState createState() => _KimmyPageState();
}

class _KimmyPageState extends State<KimmyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Kimmy's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
