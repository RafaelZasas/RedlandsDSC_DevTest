import 'package:dsc_ur/utils/colors.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'Dashboard_UI_Pages/note_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.dark,
      data: (brightness) => ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: MyColors.primary,
        accentColor: MyColors.accent,
        brightness: brightness, // default is dark
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'Dashboard Reborn',
          theme: theme,
          home: MyNotePage(),
        );
      },
    );
  }
}
