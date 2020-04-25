import 'package:flutter/material.dart';
import 'package:harendra/kConstant.dart';

class CardTile extends StatelessWidget {
  CardTile({@required this.title, this.iconName, this.count, this.iconColor});
  final String title;
  final IconData iconName;
  final int count;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 40,
          color: iconColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: kTileText,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          count.toString(),
          style: kTileText,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
