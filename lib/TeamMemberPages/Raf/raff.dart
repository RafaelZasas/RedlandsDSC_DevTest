import 'package:dashboard_reborn/TeamMemberPages/Raf/login.dart';
import 'package:dashboard_reborn/TeamMemberPages/Raf/register.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class RaffPage extends StatefulWidget {
  @override
  _RaffPageState createState() => _RaffPageState();
}

class _RaffPageState extends State<RaffPage> {
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
        child: Column(
          children: <Widget>[
            // SECTION FOR NAVBAR
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 40,
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
                    "Dev Team",
                    shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                    gradient: isThemeCurrentlyDark(context)
                        ? Gradients.coldLinear
                        : Gradients.haze, //gradient colors change according to set theme
                    style: isThemeCurrentlyDark(context) ? TitleStylesDefault.white : TitleStylesDefault.black,
                  ),
                ],
              ),
            ),

            // END NAVBAR SECTION

            // START OF MAIN BODY
            Expanded(
                child: Column(
              children: [
                SexyTile(
                  splashColor: MyColors.accent,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Some Examples provided by urmilshroff:",
                            textAlign: TextAlign.center,
                            style: isThemeCurrentlyDark(context) ? BodyStylesDefault.white : BodyStylesDefault.black,
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.blue[100])),
                          child: Text(
                            "Gradients Page",
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
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          child: Text(
                            "Material Page",
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
                          color: isThemeCurrentlyDark(context) ? MyColors.twitter : Colors.blue[900],
                          splashColor: Colors.pinkAccent,
                          child: Text(
                            "About Page",
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
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  children: [
                    SexyTile(
                      color: MyColors.primary,
                      splashColor: Colors.pinkAccent,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: Text(
                          "Login",
                          style: GoogleFonts.sacramento(
                            color: isThemeCurrentlyDark(context) ? Colors.lightBlue : Colors.pinkAccent,
                            fontSize: 46,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                    ),
                    SexyTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) {
                              return RegisterPage();
                            },
                          ),
                        );
                      },
                      color: MyColors.primary,
                      splashColor: Colors.pinkAccent,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                        child: Text(
                          "Register",
                          style: GoogleFonts.sacramento(
                            color: isThemeCurrentlyDark(context) ? Colors.lightBlue : Colors.pinkAccent,
                            fontSize: 46,
                          ),
                        ),
                      ),
                    )
                  ],
                )
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
          DynamicTheme.of(context)
              .setBrightness(Theme.of(context).brightness == Brightness.dark ? Brightness.light : Brightness.dark);
        },
      ),
    );
  }
}
