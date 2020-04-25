import 'package:flutter/material.dart';
import 'package:harendra/kConstant.dart';

class SummaryTile extends StatelessWidget {
  SummaryTile({this.childWidget});
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      margin: EdgeInsets.all(5),
      height: 125,
      decoration: BoxDecoration(
        color: kTileColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: kTileBorderColor,
        ),
      ),
      child: childWidget,
    );
  }
}
