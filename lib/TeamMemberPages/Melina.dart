import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MelinaPage extends StatefulWidget {
  @override
  _MelinaPageState createState() => _MelinaPageState();
}

class _MelinaPageState extends State<MelinaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Melina's Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
