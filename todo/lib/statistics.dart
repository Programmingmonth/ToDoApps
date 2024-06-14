import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Statistics',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        shadowColor: Colors.purple,
      ),
      body: Center(
        child: Text('Statistics Page'),
      ),
    );
  }
}
