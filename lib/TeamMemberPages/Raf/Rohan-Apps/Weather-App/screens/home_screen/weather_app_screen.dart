import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Weather-App/components/custom_app_bar.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/hourly_weather_bar.dart';
import 'components/weather_card.dart';

class WeatherAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // fix the theme to light background
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Text(
                        'Bandung,',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Indonesia',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w300,
                          fontSize: 21.0,
                          color: Color(0xFF676767),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  WeatherCard(),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            HourlyWeatherBar(padding: const EdgeInsets.symmetric(horizontal: 12.0)),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // center the FAB horizontally
              children: [
                FloatingActionButton(
                  heroTag: 'fab',
                  child: Icon(
                    EvaIcons.github,
                    size: 36.0,
                  ),
                  tooltip: 'View GitHub repo',
                  foregroundColor: invertInvertColorsStrong(context),
                  backgroundColor: invertColorsStrong(context),
                  elevation: 5.0,
                  onPressed: () => launchURL(
                      'https://github.com/rohan-kadkol/Flutter-Weekly-Series-6-Weather-App-UI'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
