import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/time_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110022),
      body: Center(
        child: TimeCard(),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
