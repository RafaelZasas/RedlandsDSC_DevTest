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
            AppBar(
              title: Text("Thomas Reznik's Page"),
              centerTitle: true,
              backgroundColor: Colors.blueGrey,
              elevation: 12.3,
              iconTheme: IconThemeData(
                color: Colors.pink, //change your color here
              ),
            ),
            Padding(
              // wrapped the "name" row with padding
              padding: EdgeInsets.only(
                top: 50.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                // giving space between back button and name
                children: [
                  Text(
                    "Enjoy My Home",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.all(30)),
                  FadeInImage.assetNetwork(
                    placeholder: 'assets/credits/test.gif',
                    image:
                        ('https://i.picsum.photos/id/129/4910/3252.jpg?hmac=g1KzJMIp75lG_scR48R1baC6TjhVmkEyygSyngKYRsg'),
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
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
