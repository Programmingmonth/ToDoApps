import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/time_card.dart';
import 'new_task_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110022),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => NewTaskScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                var begin = Offset(1.0, 0.0);
                var end = Offset.zero;
                var curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);

                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[200],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
