import 'package:flutter/material.dart';

// Now we can pass our celebrity information to each CelebCard
// Again, Dart simplifies this too!
// For example, this,
// CelebCard('Conan O\'Brien', 'Longest running late night show host', 'https://....png')
//
// Converts to, this,
// CelebCard(name: 'Conan O\'Brien', tagline: 'Longest running late night show host', imageUrl: 'https://....png')
//
// This is better as now we can shuffle the order of the parameters!
// We can also properly reformat it to get a beautiful hierarchy
// TODO (4): Pass the celebrity information to the each constructor of the CelebCard().

class CelebCard extends StatelessWidget {
  final String name;
  final String tagline;
  final String imageUrl;

  CelebCard({this.name, this.tagline, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      color: Colors.pinkAccent[200],
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            tagline,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
