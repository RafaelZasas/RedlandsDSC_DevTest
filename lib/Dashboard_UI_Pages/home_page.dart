// TEAM MEMBER PAGE IMPORTS
import 'package:dsc_ur/TeamMemberPages/Andrew/andrew.dart';
import 'package:dsc_ur/TeamMemberPages/Justin/justin.dart';
import 'package:dsc_ur/TeamMemberPages/Kimmy/kimmy.dart';
import 'package:dsc_ur/TeamMemberPages/Maggie/maggie.dart';
import 'package:dsc_ur/TeamMemberPages/Melina.dart';
import 'package:dsc_ur/TeamMemberPages/Raf/raff.dart';
import 'package:dsc_ur/TeamMemberPages/anooj.dart';
import 'package:dsc_ur/TeamMemberPages/gavi.dart';
import 'package:dsc_ur/TeamMemberPages/malachi.dart';
import 'package:dsc_ur/TeamMemberPages/paetin.dart';
import 'package:dsc_ur/TeamMemberPages/shlok.dart';
import 'package:dsc_ur/TeamMemberPages/simmy.dart';
import 'package:dsc_ur/TeamMemberPages/Tom/thomas.dart';
// ORIGINAL REPO OWNERS IMPORTS
import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:dsc_ur/widgets/sexy_tile.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
// ICONS
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
//STYLE GUIDELINE WIDGETS
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
    // This list is what will be used to populate the Stack
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
      'Thomas',
      'Melina',
      'Anooj',
      'Kimmy'
    ]; //name of each individual tile

    return Scaffold(
      // scaffold is a generic container for common phone screen layouts ( header, body, footer etc.)
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
                    'DSC UR',
                    style: isThemeCurrentlyDark(context)
                        ? TitleStylesDefault.white
                        : TitleStylesDefault.black,
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
                                        style: isThemeCurrentlyDark(context)
                                            ? LabelStyles.white
                                            : LabelStyles.black,
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
                                        return MaggiePage();
                                      } else if (index == 3) {
                                        return GaviPage();
                                      } else if (index == 4) {
                                        return SimmyPage();
                                      } else if (index == 5) {
                                        return PaetinPage();
                                      } else if (index == 6) {
                                        return JustinPage();
                                      } else if (index == 7) {
                                        return MalachiPage();
                                      } else if (index == 8) {
                                        return ShlokPage();
                                      } else if (index == 9) {
                                        return TomPage();
                                      } else if (index == 10) {
                                        return MelinaPage();
                                      } else if (index == 11) {
                                        return AnoojPage();
                                      } else if (index == 12) {
                                        return KimmyPage();
                                      }
                                      {
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
