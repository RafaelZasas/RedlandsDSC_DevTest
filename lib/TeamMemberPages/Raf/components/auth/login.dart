import 'package:dsc_ur/utils/colors.dart';
import 'package:dsc_ur/utils/text_styles.dart';
import 'package:dsc_ur/utils/ui_helpers.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // VARIABLES TO STORE FORM VALUES
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // key holds the state of our form

  // WIDGETS TO BUILD FORM FIELDS

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "Email is Required";
        } else
          return '';
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "Password is Required";
        } else
          return '';
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: ListView(
          // Making this list view because I anticipate a ned for scrolling
          children: [
            // SECTION FOR NAVBAR
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10,
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
                    "Back",
                    shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                    gradient: isThemeCurrentlyDark(context)
                        ? Gradients.jShine
                        : Gradients.byDesign, //gradient colors change according to set theme
                    style: isThemeCurrentlyDark(context) ? TitleStylesDefault.white : TitleStylesDefault.black,
                  ),
                ],
              ),
            ),

            // END NAVBAR SECTION
            Text(
              "Login Form",
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(
                color: isThemeCurrentlyDark(context) ? Colors.lightBlue : Colors.pinkAccent,
                fontSize: 22,
              ),
            ),

            Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildEmail(),
                    _buildPassword(),
                    SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      onPressed: () => {
                        if (!_formKey.currentState.validate())
                          {
                            // checks if the form is not valid
                          }
                        else
                          {print('name:$_email')}
                      },
                      child: Text("Submit"),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
