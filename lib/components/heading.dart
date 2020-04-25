import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading({this.title, this.textStyle});
  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
