import 'dart:convert';

import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Love-Calculator/widgets/names_container.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'results_screen.dart';

class LoveCalculatorScreen extends StatelessWidget {
  final TextEditingController name1 = TextEditingController();
  final TextEditingController name2 = TextEditingController();
  bool isLoading = false; // var to store loading state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Love Calculator',
        ),
        elevation: 0.0,
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: NamesContainer(
          name1: name1,
          name2: name2,
          isLoading: isLoading,
          onTap: () async {
            this.isLoading = true;
            var url =
                'https://rapidapi.p.rapidapi.com/getPercentage?fname=${name1.text.trim()}&sname=${name2.text.trim()}';
            Map<String, String> headers = {
              'x-rapidapi-host': 'love-calculator.p.rapidapi.com',
              'x-rapidapi-key': '4c18f5885bmsh1e7d3e79b072bc6p1ab2a4jsn3c7c75f09aea'
            };

            var response = await http.get(url, headers: headers);
            var jsonResponse = jsonDecode(response.body);
            await new Future.delayed(new Duration(milliseconds: 3000));
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsScreen(
                          percent: int.parse(jsonResponse['percentage']),
                          message: jsonResponse['result'],
                        )));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
        onPressed: () => launchURL('https://github.com/rohan-kadkol/Flutter-Weekly-Series-3-Love-Calculator-App'),
      ),
    );
  }
}
