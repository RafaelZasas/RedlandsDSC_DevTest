import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String tagLine;
  final String imageUrl;

  CharacterCard({this.name, this.tagLine, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 25.0,
      ),
      color: Colors.grey[800],
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            height: 290.0,
            width: 250.0,
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
            tagLine,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
