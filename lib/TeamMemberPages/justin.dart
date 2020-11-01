import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JustinPage extends StatefulWidget {
  @override
  _JustinPageState createState() => _JustinPageState();
}

class _JustinPageState extends State<JustinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Justin\'s Page'),
        backgroundColor: Colors.red,
      ),
      body: Column(children: [
        Text(
          'Welcome to my personalized widget! Hope this gets',
          style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold,),
        ),
        Image(
          image: NetworkImage('https://lampstudy.net/wp-content/uploads/2020/04/Is-Computer-science-hard.jpg'),
        ),
      ]),
    );
  }
}
