import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Weather-App/screens/home_screen/components/table_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(0, 4),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF427BFF),
            borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Image(
                height: 100.0,
                width: 150.0,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/weather-app/cloudy_with_sun.png',
                ),
              ),
              Text(
                'Heavy Rain',
                style: GoogleFonts.raleway(
                  color: Color(0xFFE2EBFF),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Sunday, 02 Oct',
                style: GoogleFonts.raleway(
                  color: Color(0xFF7EA5FF),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '24',
                    style: GoogleFonts.nunito(
                      color: Color(0xFFFFFFFF),
                      fontSize: 50.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '°',
                    style: GoogleFonts.raleway(
                      color: Color(0xFFFFFFFF),
                      fontSize: 50.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Table(
                border: TableBorder.all(color: Color(0xFF9AB9FF)),
                children: [
                  TableRow(
                    children: [
                      TableItem(
                        image: 'assets/images/weather-app/wind.png',
                        title: 'WIND',
                        subtitle: '19.2km/j',
                      ),
                      TableItem(
                        image: 'assets/images/weather-app/thermometer.png',
                        title: 'FEELS LIKE',
                        subtitle: '25°',
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableItem(
                        image: 'assets/images/weather-app/sun_outline.png',
                        title: 'INDEX UV',
                        subtitle: '2',
                      ),
                      TableItem(
                        image: 'assets/images/weather-app/pressure.png',
                        title: 'PRESSURE',
                        subtitle: '1014 mbar',
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
