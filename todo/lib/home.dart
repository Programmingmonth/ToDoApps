import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pinkAccent,
        shadowColor: Colors.purple,
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
