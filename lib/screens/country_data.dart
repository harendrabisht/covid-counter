import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Country',
        ),
      ),
      body: Container(
        child: Text('Country Data'),
      ),
    );
  }
}
