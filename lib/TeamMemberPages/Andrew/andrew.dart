import 'package:dsc_ur/Dashboard_UI_Pages/about_page.dart';
import 'package:dsc_ur/Dashboard_UI_Pages/gradients_page.dart';
import 'package:dsc_ur/Dashboard_UI_Pages/home_page.dart';
import 'package:dsc_ur/Dashboard_UI_Pages/material_page.dart';
import 'package:dsc_ur/TeamMemberPages/Andrew/about_me.dart';
import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:dsc_ur/widgets/sexy_tile.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Dog-Quotes/screens/doq_quotes_screen.dart';
import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Love-Calculator/screens/love_calculator_screen.dart';
import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/Weather-App/screens/home_screen/weather_app_screen.dart';
import 'package:dsc_ur/TeamMemberPages/Raf/Rohan-Apps/favorite-celebrities/favorite_celebrities_screen.dart';

class AndrewPage extends StatefulWidget {
  @override
  _AndrewPageState createState() => _AndrewPageState();
}

class _AndrewPageState extends State<AndrewPage> {
  var isLoading = false;
  var btnText = ['start spinning widget', 'stop spinning widget'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //gradient colors change according to set theme
              colors: isThemeCurrentlyDark(context)
                  ? [GradientColors.darkStart, GradientColors.darkEnd]
                  : [GradientColors.lightStart, GradientColors.lightEnd],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp),
        ),
        child: ListView(
          // changed column to list view to allow for scrolling
          // removed crossAxisAlignment: CrossAxisAlignment.center, because it doesn't work with list view
          children: <Widget>[
            // SECTION FOR NAVBAR
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 50.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(EvaIcons.arrowIosBack),
                    tooltip: 'Go back',
                    color: isThemeCurrentlyDark(context) ? MaterialColors.teal : MyColors.light,
                    iconSize: 26.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  GradientText(
                    "back to all developers",
                    shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                    gradient: isThemeCurrentlyDark(context) ? Gradients.coldLinear : Gradients.haze,
                    //gradient colors change according to set theme
                    style: isThemeCurrentlyDark(context)
                        ? TitleStylesDefault.white
                        : TitleStylesDefault.black,
                  ),
                ],
              ),
            ),

            // END NAVBAR SECTION

            // START OF MAIN BODY
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Center(
                child: Text(
                  "andrew yip",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'Courier New', color: Colors.green),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 10,
              ),
              child: Center(
                child: Text(
                  "software engineer",
                  style: TextStyle(fontSize: 36, fontFamily: 'Courier New', color: Colors.green, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/credits/andrew_avatar.png'),
                  radius: 150,
                ),
                SexyTile(
                  splashColor: MyColors.accent,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[100])),
                          child: Text(
                            "Gradients Page",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return MyGradientsPage();
                                },
                              ),
                            );
                          },
                        ),
                        RaisedButton(
                          shape:
                              RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "Material Page",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return MyMaterialPage();
                                },
                              ),
                            );
                          },
                        ),
                        RaisedButton(
                          color:
                              isThemeCurrentlyDark(context) ? MyColors.twitter : Colors.blue[900],
                          splashColor: Colors.pinkAccent,
                          child: Text(
                            "About Page",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return AboutMe();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Center(
                    child: Text(
                      "rohan app demos",
                      style: TextStyle(fontSize: 25, fontFamily: 'Courier New', color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SexyTile(
                  // second sexy tile for Rohan's examaples
                  splashColor: MyColors.accent,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Rohan's Flutter series apps:",
                            textAlign: TextAlign.center,
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[100])),
                          child: Text(
                            "Favourite Celebrities",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return FavoriteCelebritiesScreen();
                                },
                              ),
                            );
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[100])),
                          child: Text(
                            "Love Calculator",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return LoveCalculatorScreen();
                                },
                              ),
                            );
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[100])),
                          splashColor: Colors.pinkAccent,
                          child: Text(
                            "Dog Quotes",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return DogQuotesScreen();
                                },
                              ),
                            );
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[100])),
                          splashColor: Colors.pinkAccent,
                          child: Text(
                            "Currency Exchanger",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("woah there bud"),
                                    content: Text("I still need to add this one."),
                                    actions: [
                                      FlatButton(
                                        child: Text("OK"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue[100])),
                          splashColor: Colors.pinkAccent,
                          child: Text(
                            "Weather App",
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                          ),
                          onPressed: () {
                            // set the theme to light when you enter the weather app
                            DynamicTheme.of(context).setBrightness(Brightness.light);
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return WeatherAppScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text('view other developer team members'),
                    // ternary. if loading true text = [1] else [0]
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return MyHomePage();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text(isLoading ? btnText[1] : btnText[0]),
                    // ternary. if loading true text = [1] else [0]
                    onPressed: () {
                      setState(() {
                        // set state method only available to stateful widgets
                        isLoading = !isLoading; // flip value of isLoading
                      });
                    },
                  ),
                ),

                isLoading ? SpinKitCubeGrid(size: 100.0, color: Colors.green) : Container()
                // show spinner if loading
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab',
        child: isThemeCurrentlyDark(context)
            ? Icon(
                EvaIcons.sun,
                size: 30.0,
              ) //show sun icon when in dark mode
            : Icon(
                EvaIcons.moon,
                size: 26.0,
              ),
        //show moon icon when in light mode
        tooltip: isThemeCurrentlyDark(context) ? 'Switch to light mode' : 'Switch to dark mode',
        foregroundColor: invertInvertColorsStrong(context),
        backgroundColor: invertInvertColorsTheme(context),
        elevation: 5.0,
        onPressed: () {
          DynamicTheme.of(context).setBrightness(
              Theme.of(context).brightness == Brightness.dark ? Brightness.light : Brightness.dark);
        },
      ),
    );
  }
}
