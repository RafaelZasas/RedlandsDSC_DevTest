import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:dsc_ur/widgets/sexy_tile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:gradient_widgets/gradient_widgets.dart';



class AboutMe extends StatefulWidget {
  @override
  _AboutMe createState() => _AboutMe();
}

class _AboutMe extends State<AboutMe> {
  List<String> itemContent = [
    'intro',
    'I am a third year student at the University of Redlands studying Computer Science with minors in Physics and Mathematics. I enjoy thinking critically to solve complex problems. ',
    'facts about me',
    '-i like coding\n-i like neuroscience\n-i surf\n-i play tennis\n-i am hawaiian',
  ]; //the text in the tile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: invertInvertColorsStrong(context),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
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
                    color: isThemeCurrentlyDark(context)
                        ? MaterialColors.teal
                        : MyColors.light,
                    iconSize: 26.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  GradientText(
                    'back',
                    shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                    gradient: isThemeCurrentlyDark(context)
                        ? Gradients.backToFuture
                        : Gradients.taitanum,
                    //gradient colors change according to set theme
                    style: isThemeCurrentlyDark(context)
                        ? TitleStylesDefault.white
                        : TitleStylesDefault.black,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SexyTile(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'andrew yip',
                            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent,
                  ),
                  Hero(
                    tag: 'tile2',
                    child: SexyTile(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 250.0,
                              height: 250.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image:
                                  AssetImage('assets/credits/andrew_avatar.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Andrew Yip',
                              style: isThemeCurrentlyDark(context)
                                  ? LabelStyles.white
                                  : LabelStyles.black,
                              softWrap: true,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    EvaIcons.person,
                                    color: invertColorsMild(context),
                                    size: 24.0,
                                  ),
                                  onPressed: () =>
                                      launchURL('https://www.linkedin.com/in/andrewayip'),
                                ),
                                IconButton(
                                  icon: Icon(
                                    EvaIcons.twitter,
                                    color: MyColors.twitter,
                                    size: 26.0,
                                  ),
                                  onPressed: () => launchURL(
                                      'https://twitter.com/andrewyip_'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      splashColor: MyColors.accent,
                    ),
                  ),
                  SexyTile(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[0],
                            style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            itemContent[1],
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                            textAlign: TextAlign.left,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent,
                  ),
                  SexyTile(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            itemContent[2],
                            style: HeadingStylesDefault.accent,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            itemContent[3],
                            style: isThemeCurrentlyDark(context)
                                ? BodyStylesDefault.white
                                : BodyStylesDefault.black,
                            textAlign: TextAlign.left,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                    splashColor: MyColors.accent,
                  ),
                  SizedBox(
                    height: 36.0,
                  ),
                ],
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
