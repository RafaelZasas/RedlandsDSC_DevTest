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


          children: <Widget> [
            Row(
             children: [
               Padding(

                 padding: const EdgeInsets.only(top: 20),
                 child: Text(
                   "Thomas Reznik's Page",
                   style: TextStyle(fontSize: 20),
                   textAlign: TextAlign.center,
                 ),
               ),
             ],
            ),
             Center(
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
                     duration: Duration(milliseconds: 750) ,
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
