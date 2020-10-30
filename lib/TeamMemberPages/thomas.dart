import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TomPage extends StatefulWidget {
  @override
  _TomPageState createState() => _TomPageState();
}

class _TomPageState extends State<TomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Center(
            child: Text(
              "Tom's Page",
              style: TextStyle(fontSize: 50),
            ),

          ),
          const RaisedButton(
            onPressed: null,
            child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
