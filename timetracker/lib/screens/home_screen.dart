import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/time_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110022),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            TimeCard(
              title: 'Programming',
              time: '2h 55m 6s',
              name: 'Programming',
              work: 'Flutter',
            ),
            TimeCard(
              title: 'Designer',
              time: '1h 25m 1s',
              name: 'Designer',
              work: 'Designer',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
