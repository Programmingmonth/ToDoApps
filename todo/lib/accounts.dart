import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accounts',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        shadowColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    'Accounts:',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'example@gmail.com',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
