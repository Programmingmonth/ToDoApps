import 'package:flutter/material.dart';
import 'dart:async';

class TimeCard extends StatefulWidget {
  final String title;
  final String name;
  final String work;

  const TimeCard({
    Key? key,
    required this.title,
    required this.name,
    required this.work,
  }) : super(key: key);

  @override
  _TimeCardState createState() => _TimeCardState();
}

class _TimeCardState extends State<TimeCard> {
  bool isStarted = false;
  Duration duration = Duration();
  Timer? timer;

  void toggleStartPause() {
    setState(() {
      if (isStarted) {
        timer?.cancel();
      } else {
        timer = Timer.periodic(Duration(seconds: 1), (_) {
          setState(() {
            duration += Duration(seconds: 1);
          });
        });
      }
      isStarted = !isStarted;
    });
  }

  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String formatDuration(Duration d) {
    final hours = twoDigits(d.inHours);
    final minutes = twoDigits(d.inMinutes.remainder(60));
    final seconds = twoDigits(d.inSeconds.remainder(60));
    return '$hours:$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xFF4B4453),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Time: ${formatDuration(duration)}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${widget.name}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Name Work: ${widget.work}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: toggleStartPause,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isStarted ? Colors.grey : Color(0xFF0099FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    minimumSize: Size(60, 60),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.play_arrow, size: 20),
                      SizedBox(height: 5),
                      Text(
                        'Start',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: toggleStartPause,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isStarted ? Color(0xFFFFC107) : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    minimumSize: Size(60, 60),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.pause, size: 20),
                      SizedBox(height: 5),
                      Text(
                        'Pause',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
