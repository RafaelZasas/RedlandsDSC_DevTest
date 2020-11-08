import 'package:dsc_ur/Dashboard_UI_Pages/home_page.dart';
import 'package:dsc_ur/TeamMemberPages/Justin/info_Page.dart';
import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dsc_ur/TeamMemberPages/Justin/Video-Game-Cards/videoGame_screen.dart';

import 'justinalbum_page.dart';

class JustinPage extends StatefulWidget {
  @override
  _JustinPageState createState() => _JustinPageState();
}

class _JustinPageState extends State<JustinPage> {
  int selectedPage = 0;
  final _pageOption = [ JustinAboutPage(), JustinAlbums(), VideoGamePage(), MyHomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.android, title: 'About Me'),
          TabItem(icon: Icons.audiotrack, title: 'Some Tunes'),
          TabItem(icon: Icons.gamepad, title: 'Video Games'),
          TabItem(icon: Icons.people, title: 'Peeps Cards'),
        ],
        initialActiveIndex: selectedPage,
        onTap: (int i) {
          setState(
            () {
              selectedPage = i;
            },
          );
        },
      ),
    );
  }
}
