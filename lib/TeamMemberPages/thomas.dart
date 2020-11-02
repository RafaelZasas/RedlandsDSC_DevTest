import 'package:dashboard_reborn/utils/colors.dart';
import 'package:dashboard_reborn/utils/ui_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TomPage extends StatefulWidget {
  @override
  _TomPageState createState() => _TomPageState();
}

class _TomPageState extends State<TomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              // wrapped the "name" row with padding
              padding: EdgeInsets.only(
                left: 10.0,
                top: 50.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    // added a back button
                    icon: Icon(EvaIcons.arrowIosBack),
                    tooltip: 'Go back',
                    color: isThemeCurrentlyDark(context) ? MaterialColors.teal : MyColors.light,
                    iconSize: 26.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    // giving space between back button and name
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Thomas Reznik's Page",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              // changed Center widget to Expanded
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: null,
                    child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
                  ),
                  FlutterLogo(
                    textColor: Colors.lightBlueAccent,
                    duration: Duration(milliseconds: 750),
                    style: FlutterLogoStyle.markOnly,
                    curve: Curves.fastOutSlowIn,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
