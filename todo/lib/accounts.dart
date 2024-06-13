import 'package:flutter/material.dart';

class AccountsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
        backgroundColor: Colors.pinkAccent,
        shadowColor: Colors.purple,
      ),
      body: Center(
        child: Text('Accounts Page'),
      ),
    );
  }
}
