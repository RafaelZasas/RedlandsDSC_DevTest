import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'justinalbum_page.dart';

class JustinPage extends StatefulWidget {
  @override
  _JustinPageState createState() => _JustinPageState();
}

class _JustinPageState extends State<JustinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                    "Justin's Card",
                    shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                    gradient:
                        isThemeCurrentlyDark(context) ? Gradients.backToFuture : Gradients.taitanum,
                    //gradient colors change according to set theme
                    style: isThemeCurrentlyDark(context)
                        ? TitleStylesDefault.white
                        : TitleStylesDefault.black,
                  ),
                ],
              ),
            ),

            // END NAVBAR SECTION

            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/credits/justin_avatar.png'),
                      ),
                    ),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue[100])),
                    child: Text(
                      "Some Tunes",
                      style: isThemeCurrentlyDark(context)
                          ? BodyStylesDefault.white
                          : BodyStylesDefault.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return JustinAlbums();
                          },
                        ),
                      );
                    },
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
