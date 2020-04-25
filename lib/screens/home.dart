import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harendra/components/country_list.dart';
import 'package:harendra/components/home_view.dart';
import 'package:harendra/components/india_list.dart';
import 'package:harendra/kConstant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Container(
      child: CountryList(),
    ),
    Container(
      child: IndiaSummary(),
    )
  ];
  void _selectTab(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Covid Counter',
        ),
        backgroundColor: kTileColor,
        elevation: 0,
        bottomOpacity: 0.6,
      ),
      body: _widgetOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedIconTheme: IconThemeData(
          size: 30,
          color: kDarkBlue,
        ),
        unselectedIconTheme: IconThemeData(
          size: 20,
          color: kFontColor,
        ),
        selectedItemColor: kDarkBlue,
        unselectedItemColor: kFontColor,
        backgroundColor:
            kListColor, // this will be set when a new tab is tapped
        elevation: 10.0,
        onTap: _selectTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timeline,
            ),
            title: Text(
              'Dashboard',
              style: kBottomBarStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.language,
            ),
            title: Text(
              'Global',
              style: kBottomBarStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_city,
            ),
            title: Text(
              'India',
              style: kBottomBarStyle,
            ),
          )
        ],
      ),
    );
  }
}
