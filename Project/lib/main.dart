import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task manager app'),
          backgroundColor: Color(0xFF42A5F5),
        ),
        body: Center(
          child: Text('This project for manager app'),
        ),
      ),
    );
  }
}
