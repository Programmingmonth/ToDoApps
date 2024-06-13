import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistics'),
        backgroundColor: Colors.pinkAccent,
        shadowColor: Colors.purple,
      ),
      body: Center(
        child: Text('Statistics Page'),
      ),
    );
  }
}
