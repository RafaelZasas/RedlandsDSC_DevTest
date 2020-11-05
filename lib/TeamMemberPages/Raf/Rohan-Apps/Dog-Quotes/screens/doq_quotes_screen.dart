import 'dart:convert';

import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Dog-Quotes/components/dog_card.dart';
import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Dog-Quotes/models/dog.dart';
import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Dog-Quotes/utils/quote_utils.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DogQuotesScreen extends StatefulWidget {
  @override
  _DogQuotesScreenState createState() => _DogQuotesScreenState();
}

class _DogQuotesScreenState extends State<DogQuotesScreen> {
  List<Dog> dogs = [];

  @override
  void initState() {
    _downloadDogInfo();
  }

  _downloadDogInfo() async {
    http.Client client = http.Client();

    try {
      String apiUrl = 'https://api.thedogapi.com/v1/breeds';
      http.Response response = await client.get(apiUrl);
      var body = jsonDecode(response.body);

      List<Dog> tempDogs = [];
      for (var dogJson in body) {
        print(dogJson['id']);

        String imageApiUrl =
            'https://api.thedogapi.com/v1/images/search?breed_id=${dogJson['id']}&include_breeds=false&limit=50';
        http.Response imageResponse = await client.get(imageApiUrl);
        var imageBody = jsonDecode(imageResponse.body);

        List<String> images = [];
        for (var imageJson in imageBody) {
          images.add(imageJson['url']);
        }

        tempDogs.add(Dog(
          name: dogJson['name'],
          quote: '"${QuoteUtils.getRandomQuote()}"',
          bredFor: dogJson['bred_for'],
          breedGroup: dogJson['breed_group'],
          lifespan: dogJson['life_span'],
          height: dogJson['height']['imperial'],
          weight: dogJson['weight']['imperial'],
          origin: dogJson['origin'],
          temperament: dogJson['temperament'],
          imageUrls: images,
        ));
      }

      setState(() {
        dogs = tempDogs;
      });
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bark-Bark Quotes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return DogCard(
            dog: dogs[index],
          );
        },
        itemCount: dogs.length,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab',
        child: Icon(
          EvaIcons.github,
          size: 36.0,
        ),
        tooltip: 'View GitHub repo',
        foregroundColor: invertInvertColorsStrong(context),
        backgroundColor: invertColorsStrong(context),
        elevation: 5.0,
        onPressed: () => launchURL('https://github.com/rohan-kadkol/Flutter-Weekly-Series-4-Dog-Quotes-App'),
      ),
    );
  }
}
