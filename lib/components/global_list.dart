import 'package:flutter/material.dart';
import 'package:harendra/kConstant.dart';

class GlobalList extends StatelessWidget {
  final List<dynamic> items;
  GlobalList({this.items});

  @override
  Widget build(BuildContext context) {
    if (items == null) {
      return Center(
        child: Text(
          'No Data',
        ),
      );
    }
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: kListColor,
            margin: EdgeInsets.only(bottom: 4),
            child: InkWell(
              splashColor: Colors.black,
              onTap: () {
                print('Card tapped.');
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
                child: CardCaseSummary(
                  country: items[index]['Country'],
                  totalRecovered: items[index]['TotalRecovered'],
                  totalDeath: items[index]['TotalDeaths'],
                  totalConfirmed: items[index]['TotalConfirmed'],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CardCaseSummary extends StatelessWidget {
  CardCaseSummary({
    this.country,
    this.totalConfirmed,
    this.totalDeath,
    this.totalRecovered,
  });
  final String country;
  final int totalConfirmed;
  final int totalDeath;
  final int totalRecovered;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            country,
            style: kListTitle,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          kCasesIcon,
                          size: 20,
                          color: kTileColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Total Cases',
                          style: kCardSummaryText,
                        ),
                      ],
                    ),
                    Text(
                      totalConfirmed.toString(),
                      style: kCardSummaryText,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          kDeathIcon,
                          size: 20,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Total Death',
                          style: kCardSummaryText,
                        ),
                      ],
                    ),
                    Text(
                      totalDeath.toString(),
                      style: kCardSummaryText,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          kRecoverIcon,
                          size: 20,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Total Recovered',
                          style: kCardSummaryText,
                        ),
                      ],
                    ),
                    Text(
                      totalRecovered.toString(),
                      style: kCardSummaryText,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
