import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'custom_button.dart';

class NamesContainer extends StatelessWidget {
  final TextEditingController name1;
  final TextEditingController name2;
  bool isLoading;
  final Function onTap;

  NamesContainer({this.onTap, this.name1, this.name2, this.isLoading});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.amber[100],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        width: 300.0,
        child: Column(
          children: [
            TextField(
              controller: name1,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: 'Name 1',
                hintStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              cursorColor: Colors.red,
              controller: name2,
              decoration: InputDecoration(
                hintText: 'Name 2',
                hintStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            CustomButton(onTap: onTap),
            isLoading // is the sys waiting for the password?
                ? SpinKitCircle(
                    // if so display loading indicator
                    color: Colors.lightBlue,
                    size: 50,
                  )
                : Container(), // if not display nothing
          ],
        ),
      ),
    );
  }
}
