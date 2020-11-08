import 'package:dsc_ur/TeamMemberPages/Justin//Video-Game-Cards/character_card.dart';
import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class VideoGamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 25.0,
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
                    "Video Game Cards",
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

            //END NAVBAR SECTION

            //START OF MAIN BODY
            Expanded(
              child: Column(
                children: [
                  CharacterCard(
                    name: 'Travler',
                    imageUrl:
                    'https://static.wikia.nocookie.net/destinypedia/images/1/1d/Destiny_2_Broken_Traveller.png/revision/latest?cb=20190804094209',
                    tagLine: "A big ball",
                  ),
                  CharacterCard(
                    name: 'Titian',
                    imageUrl:
                    'https://images-na.ssl-images-amazon.com/images/I/71IZdOuNEPL._AC_SY879_.jpg',
                    tagLine: 'Mmmm Crayons',
                  ),
                  CharacterCard(
                    name: 'Hunter',
                    imageUrl:
                    'https://d1lss44hh2trtw.cloudfront.net/assets/article/2020/07/01/destiny-2-exotic-hunter-armor_feature.jpg',
                    tagLine: 'Dodge and weave',
                  ),
                  CharacterCard(
                    name: 'Warlock',
                    imageUrl:
                    'https://d1lss44hh2trtw.cloudfront.net/assets/article/2020/06/28/destiny-2-exotic-warlock-armor_feature.jpg',
                    tagLine: 'Floaty Boy',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
