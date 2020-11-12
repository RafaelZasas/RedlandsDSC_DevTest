import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewsPage extends StatefulWidget {
  @override
  _ReviewsPageState createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Review App",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
