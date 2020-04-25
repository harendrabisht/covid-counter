import 'package:flutter/material.dart';
import 'package:harendra/kConstant.dart';
import 'package:harendra/services/summary_service.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

import 'global_list.dart';

class CountryList extends StatefulWidget {
  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  List countryList;
  @override
  void initState() {
    super.initState();
    _getItems();
  }

  void _getItems() async {
    SummaryService covidSummary = SummaryService();
    var summary = await covidSummary.getSummaryData();
    setState(() {
      countryList = summary['Countries'];
    });
  }

  @override
  Widget build(BuildContext context) {
    if (countryList == null) {
      return Center(
        child: Loading(
          indicator: BallPulseIndicator(),
          size: 100.0,
          color: kFontColor,
        ),
      );
    }
    return Container(
      child: GlobalList(
        items: countryList,
      ),
    );
  }
}
