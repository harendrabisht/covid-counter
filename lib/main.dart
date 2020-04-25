import 'package:flutter/material.dart';
import 'package:harendra/kConstant.dart';

import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Counter',
      theme: ThemeData.dark().copyWith(
        primaryColor: kAppBackground,
        scaffoldBackgroundColor: kAppBackground,
      ),
      home: Home(),
    );
  }
}
