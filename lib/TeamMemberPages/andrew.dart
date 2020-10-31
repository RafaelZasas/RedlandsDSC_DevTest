import 'package:dashboard_reborn/pages/about_page.dart';
import 'package:dashboard_reborn/pages/gradients_page.dart';
import 'package:dashboard_reborn/pages/material_page.dart';
import 'package:dashboard_reborn/utils/colors.dart';
import 'package:dashboard_reborn/utils/text_styles.dart';
import 'package:dashboard_reborn/utils/ui_helpers.dart';
import 'package:dashboard_reborn/widgets/sexy_tile.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AndrewPage extends StatefulWidget {
  @override
  _AndrewPageState createState() => _AndrewPageState();
}

class _AndrewPageState extends State<AndrewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Center(
                child: Text(
                  "andrew yip",
                  style: TextStyle(fontSize: 50, color: Colors.green),
                ),
              ),
            ),
            Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Some Examples provided by urmilshroff:",
                        textAlign: TextAlign.center,
                        style: isThemeCurrentlyDark(context) ? BodyStylesDefault.white : BodyStylesDefault.black,
                      ),
                    ),
                    SexyTile(
                      splashColor: MyColors.accent,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            RaisedButton(
                              child: Text(
                                "gradients page",
                                style: isThemeCurrentlyDark(context) ? BodyStylesDefault.white : BodyStylesDefault.black,
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
                              child: Text(
                                "material page",
                                style: isThemeCurrentlyDark(context) ? BodyStylesDefault.white : BodyStylesDefault.black,
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
                              child: Text(
                                "about page",
                                style: isThemeCurrentlyDark(context) ? BodyStylesDefault.white : BodyStylesDefault.black,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) {
                                      return MyAboutPage();
                                    },
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Image(image: AssetImage('assets/credits/urmil.png'))
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
        ), //show moon icon when in light mode
        tooltip: isThemeCurrentlyDark(context) ? 'Switch to light mode' : 'Switch to dark mode',
        foregroundColor: invertInvertColorsStrong(context),
        backgroundColor: invertInvertColorsTheme(context),
        elevation: 5.0,
        onPressed: () {
          DynamicTheme.of(context)
              .setBrightness(Theme.of(context).brightness == Brightness.dark ? Brightness.light : Brightness.dark);
        },
      ),
    );
  }
}