import 'package:flutter/material.dart';
import './login_screen.dart';
import 'map_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login to gg map',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }

}
