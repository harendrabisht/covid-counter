import 'package:flutter/material.dart';
import 'package:harendra/components/heading.dart';
import 'package:harendra/components/summary.dart';
import 'package:harendra/services/summary_service.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

import '../kConstant.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int totalConfirmed;
  int totalDeaths;
  int totalRecovered;
  List countries;
  int indTotalConfirmed;
  int indTotalDeaths;
  int indTotalRecovered;
  bool isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSummary();
  }

  void getSummary() async {
    SummaryService covidSummary = SummaryService();
    var summary = await covidSummary.getWorldTotal();
    var indiaSummary = await covidSummary.getIndiaSummary();

    setState(() {
      totalConfirmed = summary['TotalConfirmed'];
      totalDeaths = summary['TotalDeaths'];
      totalRecovered = summary['TotalRecovered'];

      indTotalConfirmed = indiaSummary['TotalConfirmed'];
      indTotalDeaths = indiaSummary['TotalDeaths'];
      indTotalRecovered = indiaSummary['TotalRecovered'];
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoaded == false) {
      return Center(
        child: Loading(
          indicator: BallPulseIndicator(),
          size: 100.0,
          color: kFontColor,
        ),
      );
    }
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Heading(
            title: 'Global',
            textStyle: kHeading,
          ),
          Container(
            child: Summary(
              totalConfirmed: totalConfirmed,
              totalDeaths: totalDeaths,
              totalRecovered: totalRecovered,
            ),
          ),
          Heading(
            title: 'India',
            textStyle: kHeading,
          ),
          Container(
            child: Summary(
              totalConfirmed: indTotalConfirmed,
              totalDeaths: indTotalDeaths,
              totalRecovered: indTotalRecovered,
            ),
          ),
        ],
      ),
    );
  }
}
