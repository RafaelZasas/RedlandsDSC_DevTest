import 'package:dashboard_reborn/utils/colors.dart';
import 'package:dashboard_reborn/utils/text_styles.dart';
import 'package:dashboard_reborn/utils/ui_helpers.dart';
import 'package:dashboard_reborn/widgets/swiping_cards.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:dynamic_theme/dynamic_theme.dart';


List<String> swipingCardImages = [
  'assets/music/Kaleo_album.jpg',
  'assets/music/justin_music/MISSIO_album.jpg',
  'assets/music/justin_music/Rage_album.jpg',
  'assets/music/justin_music/RHCP_album.jpg',
  'assets/music/justin_music/Imagine_album.jpg',
  'assets/music/justin_music/Post_album.jpg',
];

List<String> swipingCardTitles = [
  'A/B',
  'Everybody gets High',
  'Rage Against The Machine',
  'Blood Sugar Sex Magik',
  'Smoke+Mirrors',
  'Hollywood\'s Bleeding',
];


var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;
var gradientStartColor;
var gradientEndColor;
PageController controller =
    PageController(initialPage: swipingCardImages.length - 1);
var i = swipingCardImages.length - 1;

class JustinAlbums extends StatefulWidget {
  @override
  _JustinAlbumsState createState() => _JustinAlbumsState();
}

class _JustinAlbumsState extends State<JustinAlbums> {
  var currentPage = swipingCardImages.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: swipingCardImages.length - 1);
    controller.addListener(
      () {
        setState(
          () {
            currentPage = controller.page;
          },
        );
      },
    );

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
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
                      'Some Tunes I enjoy',
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
              Stack(
                children: <Widget>[
                  SwipingCards(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: swipingCardImages.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
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
        tooltip: isThemeCurrentlyDark(context)
            ? 'Switch to light mode'
            : 'Switch to dark mode',
        foregroundColor: invertInvertColorsStrong(context),
        backgroundColor: invertInvertColorsTheme(context),
        elevation: 5.0,
        onPressed: () {
          DynamicTheme.of(context).setBrightness(
              Theme.of(context).brightness == Brightness.dark
                  ? Brightness.light
                  : Brightness.dark);
        },
      ),
    );
  }
}
