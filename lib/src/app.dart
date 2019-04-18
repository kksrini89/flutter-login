import 'package:flutter/material.dart';
import './screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Login'),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: LoginPage(),
      ),
    );
  }
}
