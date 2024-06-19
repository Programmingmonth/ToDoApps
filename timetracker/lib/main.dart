import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/statistics_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/new_task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/statistics': (context) => StatisticsScreen(),
        '/settings': (context) => SettingsScreen(),
        '/new-task': (context) => NewTaskScreen(),
      },
    );
  }
}
