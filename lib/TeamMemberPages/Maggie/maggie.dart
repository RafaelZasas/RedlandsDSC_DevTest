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
      appBar: AppBar(
        title: Text('Maggie'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text('Hey'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text('Hi'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Hello'),
          ),
        ],
      ),
    );
  }
}
