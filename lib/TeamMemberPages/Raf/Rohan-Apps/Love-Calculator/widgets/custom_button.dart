import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;

  const CustomButton({
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20.0),
      child: InkWell(
        splashColor: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
        onTap: onTap,
        child: FittedBox(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Find if ❤',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
