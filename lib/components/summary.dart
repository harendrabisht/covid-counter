import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'summary_tile.dart';

class Summary extends StatelessWidget {
  Summary({this.totalConfirmed, this.totalDeaths, this.totalRecovered});
  final int totalConfirmed;
  final int totalDeaths;
  final int totalRecovered;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SummaryTile(
              childWidget: CardTile(
                title: 'Total Cases',
                iconName: Icons.av_timer,
                count: totalConfirmed,
              ),
            ),
          ),
          Expanded(
            child: SummaryTile(
              childWidget: CardTile(
                title: 'Total Death',
                iconName: CupertinoIcons.heart_solid,
                count: totalDeaths,
                iconColor: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: SummaryTile(
              childWidget: CardTile(
                title: 'Total Recovered',
                iconName: CupertinoIcons.restart,
                count: totalRecovered,
                iconColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
