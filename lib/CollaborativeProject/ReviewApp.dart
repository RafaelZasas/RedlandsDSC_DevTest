import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dsc_ur/CollaborativeProject/profile.dart';
import 'package:dsc_ur/CollaborativeProject/reviews_page.dart';
import 'package:dsc_ur/CollaborativeProject/submit_reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewApp extends StatefulWidget {
  @override
  _ReviewAppState createState() => _ReviewAppState();
}

class _ReviewAppState extends State<ReviewApp> {
  int selectedPage = 0;
  final _pageOption = [SubmitReviewsPage(), ReviewsPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.article_outlined, title: 'Submit Review'),
          TabItem(icon: Icons.assessment_outlined, title: 'See other Reviews'),
          TabItem(icon: Icons.account_box_outlined, title: 'Profile'),
        ],
        initialActiveIndex: selectedPage,
        onTap: (int i) {
          setState(
            () {
              selectedPage = i;
            },
          );
        },
      ),
    );
  }
}
