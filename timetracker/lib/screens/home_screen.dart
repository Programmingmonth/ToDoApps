import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/time_card.dart';
import 'new_task_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> tasks = [
    {'title': 'Programming', 'name': 'Programming', 'work': 'Flutter'},
    {'title': 'Designer', 'name': 'Designer', 'work': 'Designer'},
  ];

  void addTask(String title, String name, String work) {
    setState(() {
      tasks.add({'title': title, 'name': name, 'work': work});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110022),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ...tasks.map((task) => TimeCard(
              title: task['title']!,
              name: task['name']!,
              work: task['work']!,
            )).toList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
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
          if (newTask != null) {
            addTask(newTask['title'], newTask['name'], newTask['work']);
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[200],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
