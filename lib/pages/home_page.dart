import 'package:dashboard_reborn/TeamMemberPages/andrew.dart';
import 'package:dashboard_reborn/TeamMemberPages/gavi.dart';
import 'package:dashboard_reborn/TeamMemberPages/raff.dart';
import 'package:dashboard_reborn/utils/colors.dart';
import 'package:dashboard_reborn/utils/text_styles.dart';
import 'package:dashboard_reborn/utils/ui_helpers.dart';
import 'package:dashboard_reborn/widgets/sexy_tile.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//this page is based on https://github.com/Ivaskuu/dashboard

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> itemNames = [
      'Andrew',
      'Raff',
      'Maggie',
      'Gavi',
      'Simmy',
      'Paetin',
      'Justin',
      'Malachi',
      'Shlok',
    ]; //name of each individual tile

    return Scaffold(
      backgroundColor: invertInvertColorsStrong(context),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 40.0,
                top: 60.0,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Dashboard Reborn',
                    style: isThemeCurrentlyDark(context) ? TitleStylesDefault.white : TitleStylesDefault.black,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                childAspectRatio: 2.5,
                children: List.generate(
                  itemNames.length,
                  (index) {
                    return Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Hero(
                          tag: 'tile$index', //using a different hero widget tag for
                          // each page mapped to the page's index value
                          child: SexyTile(),
                        ),
                        Container(
                          margin: EdgeInsets.all(15.0),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Hero(
                                    tag: 'title$index',
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text(
                                        '${itemNames[index]}',
                                        style: isThemeCurrentlyDark(context) ? LabelStyles.white : LabelStyles.black,
                                        softWrap: true,
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              splashColor: MyColors.accent,
                              borderRadius: BorderRadius.circular(15.0),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) {
                                      if (index == 0) {
                                        return AndrewPage();
                                      } else if (index == 1) {
                                        return RaffPage();
                                      } else if (index == 2) {
                                        return RaffPage();
                                      } else if (index == 3) {
                                        return RaffPage();
                                      } else if (index == 4) {
                                        return GaviPage();
                                      } else if (index == 5) {
                                        return RaffPage();
                                      } else if (index == 6) {
                                        return RaffPage();
                                      } else if (index == 7) {
                                        return RaffPage();
                                      } else if (index == 8) {
                                        return RaffPage();
                                      } else if (index == 9) {
                                        return RaffPage();
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
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
