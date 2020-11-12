import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitReviewsPage extends StatefulWidget {
  @override
  _SubmitReviewsPageState createState() => _SubmitReviewsPageState();
}

class _SubmitReviewsPageState extends State<SubmitReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Submit Review Page",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
